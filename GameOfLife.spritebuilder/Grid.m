//
//  Grid.m
//  GameOfLife
//
//  Created by Juan Pedro Lozano on 25/06/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Grid.h"
#import "Creature.h"

static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;



@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}

- (void)onEnter {
    
    [super onEnter];
    
    [self setupGrid];
    
    self.userInteractionEnabled = YES;
}

- (void)setupGrid {
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height / GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
    _gridArray = [NSMutableArray array];
    x = 0;
    for (int i = 0; i < GRID_ROWS; i++) {
        _gridArray[i] = [NSMutableArray array];
        
        for (int j = 0; j < GRID_COLUMNS; j++) {
            Creature * creature = [[Creature alloc] initCreature];
            creature.anchorPoint = ccp(0,0);
            creature.position = ccp(x,y);
            [self addChild:creature];
            
            _gridArray [i][j] = creature;
            creature.isAlive = YES;
            
            x +=_cellWidth;
        }
        y += _cellHeight;
    }
    
}

@end
