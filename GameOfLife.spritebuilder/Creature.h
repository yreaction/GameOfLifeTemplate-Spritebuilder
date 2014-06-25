//
//  Creature.h
//  GameOfLife
//
//  Created by Juan Pedro Lozano on 25/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCSprite.h"

@interface Creature : CCSprite

// stores the current state of the creature
@property (nonatomic,assign) BOOL isAlive;

// stores the amount of living neighboors

@property (nonatomic, assign) NSInteger livingNeigbors;

- (id)initCreature;


@end
