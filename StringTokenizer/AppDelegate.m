//
//  AppDelegate.m
//  StringTokenizer
//
//  Created by Lancy on 22/10/12.
//  Copyright (c) 2012 Lancy. All rights reserved.
//

#import "AppDelegate.h"
#import "NSString+Tokenize.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)tapTokenizeButton:(id)sender {
    NSString *inputString = self.inputTextView.string;
    NSLog(@"TokensArray = %@", inputString.arrayWithWordTokenize);
    [self.outputTextView setString:[inputString separatedStringWithSeparator:@"/"]];
}
@end
