//
//  NSString+Tokenize.m
//  StringTokenizer
//
//  Created by Lancy on 22/10/12.
//  Copyright (c) 2012 Lancy. All rights reserved.
//

#import "NSString+Tokenize.h"

@implementation NSString (Tokenize)

- (NSArray *)arrayWithWordTokenize
{
    NSMutableArray *tokensArray = [NSMutableArray array];
    NSString *string = self;
    
    CFLocaleRef locale = CFLocaleCopyCurrent();
    CFRange range = CFRangeMake(0, [string length]);
    
    CFStringTokenizerRef tokenizer = CFStringTokenizerCreate(kCFAllocatorDefault,
                                                             (CFStringRef)string,
                                                             range,
                                                             kCFStringTokenizerUnitWordBoundary,
                                                             locale);
    
    //CFStringTokenizerTokenType tokenType = CFStringTokenizerGoToTokenAtIndex(tokenizer, 0);
    CFStringTokenizerTokenType tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer);
    
    while (tokenType != kCFStringTokenizerTokenNone) {
        range = CFStringTokenizerGetCurrentTokenRange(tokenizer);
        NSString *token = [string substringWithRange:NSMakeRange(range.location, range.length)];
        [tokensArray addObject:token];
        tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer);
    }
    
    CFRelease(locale);
    CFRelease(tokenizer);
    
    return tokensArray;

}

- (NSString *)separatedStringWithSeparator:(NSString *)separator
{
    NSArray *tokensArray = self.arrayWithWordTokenize;
    NSString *separatedString = [tokensArray componentsJoinedByString:separator];
    return separatedString;
}

@end
