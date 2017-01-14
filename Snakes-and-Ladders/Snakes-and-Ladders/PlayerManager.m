//
//  PlayerManager.m
//  Snakes-and-Ladders
//
//  Created by Alex Bearinger on 2017-01-14.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import "PlayerManager.h"
#import "Player.h"

@implementation PlayerManager

-(instancetype)init{
    self = [super init];
    if (self)
        _players = [NSMutableArray new];
    return self;
}


-(void)createPlayers:(int)players{
    for (int i = 0; i < players; ++i){
        NSString *name = [NSString stringWithFormat:@"player%d",i];
        Player *player = [Player new];
        player.name = name;
        [self.players addObject:player];
    }
}

@end
