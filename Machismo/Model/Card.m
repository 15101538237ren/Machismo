//
//  Card.m
//  Machismo
//
//  Created by ren on 14/12/13.
//  Copyright (c) 2014年 Beihang University. All rights reserved.
//

#import "Card.h"
#import <Foundation/Foundation.h>

@interface Card()

@end

@implementation Card

- (int) macth:(NSArray *) otherCards
{
    int score=0;
    for (Card *card in otherCards) {
        if([card.contents isEqualToString:self.contents])
        {
            score=1;
        }
    }
    return score;
}

@end