//
//  questionDeck.h
//  CalcFlashDemo
//
//  Created by Alex Greenberg on 12/21/14.
//  Copyright (c) 2014 MakerMason. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "questionCard.h"
@interface questionDeck : NSObject

- (void) addQuestion: (questionCard*) questionCard; //(* questionCard);

- (questionCard *) drawRandomCard;

- (void) initializeDeck;


@end
