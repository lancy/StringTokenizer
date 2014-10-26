//
//  StringTokenizeExtension.swift
//  StringTokenizer
//
//  Created by lancy on 10/26/14.
//  Copyright (c) 2014 Lancy. All rights reserved.
//

import Foundation

extension String {
    func wordTokens() -> [String] {
        let locale = CFLocaleCopyCurrent()
        let range = CFRangeMake(0, CFStringGetLength(self))
        let tokenizer = CFStringTokenizerCreate(kCFAllocatorDefault, self, range, UInt(kCFStringTokenizerUnitWordBoundary), locale)
        
        var tokens = [String]()
        var tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer)
        
        while (tokenType != .None) {
            let range = CFStringTokenizerGetCurrentTokenRange(tokenizer)
            let token = CFStringCreateWithSubstring(kCFAllocatorDefault, self, range)
            tokens.append(token)
            tokenType = CFStringTokenizerAdvanceToNextToken(tokenizer)
        }
        
        return tokens
    }
    
    func separatedStringWithSeparator(separator: String) -> String {
        return (self.wordTokens() as NSArray).componentsJoinedByString(separator)
    }
}