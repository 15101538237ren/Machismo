//
//  Card.h
//  Machismo
//
//  Created by ren on 14/12/13.
//
//
#import <Foundation/Foundation.h>
@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;

@property (nonatomic ,getter=isChosen) BOOL chosen;
@property (nonatomic,getter=isMatched) BOOL matched;

- (int) match:(NSArray *)otherCards;
@end