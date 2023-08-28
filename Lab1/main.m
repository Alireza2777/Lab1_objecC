//
//  main.m
//  Lab1
//
//  Created by Alireza Karimi on 2023-08-28.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while (1) {
            NSLog(@"Select an operation:");
            NSLog(@"1. Uppercase");
            NSLog(@"2. Lowercase");
            NSLog(@"3. Numberize");
            NSLog(@"4. Canadianize");
            NSLog(@"5. Respond");
            NSLog(@"6. De-Space-It");
            NSLog(@"7. Quit");
            
            char inputChars[255];
            fgets(inputChars, 255, stdin);
            int operation = atoi(inputChars); // Convert char array to int
            
            if (operation == 7) {
                break;
            }
            
            NSLog(@"Input a string: ");
            fgets(inputChars, 255, stdin);
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            NSMutableString *resultString = [[NSMutableString alloc] init];
            
            switch (operation) {
                case 1:
                    [resultString setString:[inputString uppercaseString]];
                    break;
                case 2:
                    [resultString setString:[inputString lowercaseString]];
                    break;
                case 3: {
                    NSInteger number = [inputString integerValue];
                    if (number != 0 || [inputString isEqualToString:@"0"]) {
                        NSLog(@"Number: %ld", (long)number);
                    } else {
                        NSLog(@"Invalid input for number conversion.");
                    }
                    break;
                }
                case 4:
                    [resultString setString:[inputString stringByAppendingString:@", eh?"]];
                    break;
                case 5:
                    if ([inputString hasSuffix:@"?"]) {
                        [resultString setString:@"I don't know"];
                    } else if ([inputString hasSuffix:@"!"]) {
                        [resultString setString:@"Whoa, calm down!"];
                    }
                    break;
                case 6:
                    [resultString setString:[inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"]];
                    break;
                default:
                    NSLog(@"Invalid operation number.");
            }
            
            NSLog(@"Result: %@", resultString);
        }
    }
    return 0;
}
