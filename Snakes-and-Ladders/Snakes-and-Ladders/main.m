//
//  main.m
//  Snakes-and-Ladders
//
//  Created by Alex Bearinger on 2017-01-14.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Player.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Player *player = [Player new];
        InputCollector *inputCollector = [InputCollector new];
        BOOL keepPlaying = YES;
        while(keepPlaying){
            NSString *input = [inputCollector inputFromPrompt:@"roll: "];
            if([input isEqualToString:@"roll"])
                [player roll];
       //     NSLog(@"%d",player.currentSquare);
            if (player.currentSquare >= 100)
                keepPlaying = NO;
        }
        NSLog(@"Hope you had fun");
    }
    return 0;
}
