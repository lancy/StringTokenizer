#Mac & iOS的string tokenizer

## 简介
封装了CFStringTokenizer的NSString Category，可以方便的应用于Mac或者iOS APP， 其不但支持西方语言，更支持中文和日文这样没有空格分词的语言。

## 使用方法
导入**NSString + Tokenize.h** 和 **NSString + Tokenize.m**后，
即可使用这两个接口

    - (NSArray *)arrayWithWordTokenize;
    - (NSString *)separatedStringWithSeparator:(NSString *)separator;

## 示例

    #import "NSString+Tokenize.h"
    ...
    - (IBAction)tapTokenizeButton:(id)sender {
        NSString *inputString = self.inputTextView.string;
        NSLog(@"TokensArray = %@", inputString.arrayWithWordTokenize);
        [self.outputTextView setString:[inputString separatedStringWithSeparator:@"/"]];
    }

