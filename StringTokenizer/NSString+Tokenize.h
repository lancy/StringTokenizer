//
//  NSString+Tokenize.h
//  StringTokenizer
//
//  Created by Lancy on 22/10/12.
//  Copyright (c) 2012 Lancy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Tokenize)

- (NSArray *)arrayWithWordTokenize;
- (NSString *)separatedStringWithSeparator:(NSString *)separator;

@end
