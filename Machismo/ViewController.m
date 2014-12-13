//
//  ViewController.m
//  Machismo
//
//  Created by ren on 14/12/13.
//  Copyright (c) 2014年 Beihang University. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCard.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong,nonatomic) Deck *deck;

@end


@implementation ViewController

- (Deck *)deck
{
    if(!_deck)
    {
        _deck=[self createDeck];
    }
    return _deck;
}

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}
- (void)setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    self.flipLabel.text=[NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"Flips :%d",self.flipCount);
}
- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        //目前是正面
        UIImage *cardImage=[UIImage imageNamed:@"cardback"];
        [sender setBackgroundImage:cardImage
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
        self.flipCount++;
    }
    else
    {
        Card *card=[self.deck drawRandomCard];
        if(card)
        {
            UIImage *cardImage=[UIImage imageNamed:@"cardfront"];
            [sender setBackgroundImage:cardImage
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
    
}

@end
