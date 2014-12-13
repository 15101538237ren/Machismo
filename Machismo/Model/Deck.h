//
//  Deck.h
//  Machismo
//
//  Created by ren on 14/12/13.
//  Copyright (c) 2014年 Beihang University. All rights reserved.
//
//
#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;
@end