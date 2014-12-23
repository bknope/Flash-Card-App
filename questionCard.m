//
//  questionDeck.m
//  CalcFlashDemo
//
//  Created by Alex Greenberg on 12/21/14.
//  Copyright (c) 2014 MakerMason. All rights reserved.
//

#import "questionDeck.h"
//#import "questionCard.h"

@interface questionDeck()
@property (strong, nonatomic) NSMutableArray *questions; //array of questionCard objects
@property (strong, nonatomic) questionCard *card01;
@property (strong, nonatomic) questionCard *card02;
@property (strong, nonatomic) questionCard *card03;
@property (strong, nonatomic) questionCard *card04;
@end

@implementation questionDeck

//if this works I'm a genious, if not, then so much for this project
- (questionCard*) card01
{
    if(!_card01) _card01 = [self createCard];
    return _card01 = [self createCard];
}
- (questionCard*) card02
{
    if(!_card02) _card02 = [self createCard];
    return _card01 = [self createCard];
}
- (questionCard*) card03
{
    if(!_card03) _card03 = [self createCard];
    return _card03 = [self createCard];
}


//this probobly doesn't work
-(questionCard *) createCard
{
    return [[questionCard alloc]init];
}


- (void) addQuestion:(questionCard *)questionCard{

    [_questions addObject:questionCard];
    
}
- (void) initializeDeck
{
    _questions = [[NSMutableArray alloc] init];
    _card01 = [[questionCard alloc]init];
    _card02 = [[questionCard alloc]init];
    _card03 = [[questionCard alloc]init];
    _card04 = [[questionCard alloc] init];
    _card01.answer = 1;
    _card02.answer = 2;
    _card03.answer = 3;
    _card04.answer = 4;
    _card01.picture = @" 1 ";
    _card02.picture = @" 2 ";
    _card03.picture = @" 3 ";
    _card04.picture = @"4";
    [self addQuestion:_card01];
    [self addQuestion:_card02];
    [self addQuestion:_card03];
    [self addQuestion:_card04];
    
}

 - (NSMutableArray *)questions
 {
 if (!_questions) _questions = [NSMutableArray array];
 return _questions;
 }


 -(questionCard *)drawRandomCard
 {
     
 questionCard *randomQuestionCard;
 
 if ([self.questions count]) {
 NSUInteger index = arc4random() % self.questions.count;
 randomQuestionCard = self.questions[index];
 [self.questions removeObjectAtIndex:index];
     
 
 }
     
      
 
 return randomQuestionCard;
      
      
     
     
 }



@end

