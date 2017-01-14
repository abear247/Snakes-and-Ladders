//
//  PlayerManager.h
//  Snakes-and-Ladders
//
//  Created by Alex Bearinger on 2017-01-14.
//  Copyright © 2017 Alex Bearinger. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayerManager : NSObject

@property NSMutableArray *players;

-(void)createPlayers:(int)players;

@end
