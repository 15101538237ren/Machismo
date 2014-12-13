//
//  PlayingCard.h
//  Machismo
//
//  Created by ren on 14/12/13.
//  Copyright (c) 2014年 Beihang University. All rights reserved.
//

#import "Card.h"
@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end