//
//  Player.m
//  Snakes-and-Ladders
//
//  Created by Alex Bearinger on 2017-01-14.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "Player.h"

@implementation Player

-(instancetype)init{
    self = [super init];
    if (self){
        _currentSquare = 0;
        _gameLogic = @{@(4) : @(14), @(9) : @(31), @(20) : @(38), @(28) : (@84), @(40) : @(59), @(51) : @(67), @(63) : @(81), @(17) : @(7), @(89) : @(26), @(64) : @(60), @(95) : @(75), @(99) : @(78)};
    }
    return self;
}

-(void)roll{
    int roll = arc4random_uniform(6)+1;
    self.currentSquare = self.currentSquare+roll;
    BOOL hitSpecial = NO;
    NSLog(@"you rolled a %d", roll);
    NSNumber *square = [NSNumber numberWithInt:self.currentSquare];
    for (NSNumber *special in self.gameLogic){
        if ([special isEqualToNumber:square]){
            int firstValue = self.currentSquare;
            self.currentSquare = [[self.gameLogic objectForKey:special] intValue];
            if (self.currentSquare > firstValue)
                NSLog(@"Stairway to heaven!, you jumped from %d to %d",firstValue, self.currentSquare);
            else
                NSLog(@"Slippery snakes you slid from %d to %d",firstValue, self.currentSquare);
            hitSpecial = YES;
        }
    }
    
    if (!hitSpecial){
        if (self.currentSquare >= 100)
            NSLog(@"Congrats, you win!");
        else
            NSLog(@"You landed on %d", self.currentSquare);
    }
    
}

@end
