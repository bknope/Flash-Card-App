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
//@property (strong, nonatomic) NSMutableArray *questions; //array of questionCard objects
@property (strong, nonatomic) questionCard *card01;
@property (strong, nonatomic) questionCard *card02;
@property (strong, nonatomic) questionCard *card03;
@property (strong, nonatomic) questionCard *card04;
@property (strong, nonatomic) questionCard *card05;
@property (strong, nonatomic) questionCard *card06;
@property (strong, nonatomic) questionCard *card07;
@property (strong, nonatomic) questionCard *card08;
@property (strong, nonatomic) questionCard *card09;
@property (strong, nonatomic) questionCard *card10;






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
    _card04 = [[questionCard alloc]init];
    _card05 = [[questionCard alloc] init];
    _card06 = [[questionCard alloc] init];
    _card07 = [[questionCard alloc] init];
    _card08 = [[questionCard alloc] init];
    _card09 = [[questionCard alloc] init];
    _card10 = [[questionCard alloc] init];
    
    _card01.answers = [[NSMutableArray alloc] init];
    _card02.answers = [[NSMutableArray alloc] init];
    _card03.answers = [[NSMutableArray alloc] init];
    _card04.answers = [[NSMutableArray alloc] init];
    _card05.answers = [[NSMutableArray alloc] init];
    _card06.answers = [[NSMutableArray alloc] init];
    _card07.answers = [[NSMutableArray alloc] init];
    _card08.answers = [[NSMutableArray alloc] init];
    _card09.answers = [[NSMutableArray alloc] init];
    _card10.answers = [[NSMutableArray alloc] init];

    
    
    [_card01 setAnswer:1];
    [_card02 setAnswer:2];
    [_card03 setAnswer:3];
    [_card04 setAnswer:4];
    [_card05 setAnswer:1];
    [_card06 setAnswer:4];
    [_card07 setAnswer:3];
    [_card08 setAnswer:2];
    [_card09 setAnswer:3];
    [_card10 setAnswer:4];
    
    [_card01 setCategory:@"addition"];
    [_card02 setCategory:@"addition"];
    [_card03 setCategory:@"addition"];
    [_card04 setCategory:@"subtraction"];
    [_card05 setCategory:@"subtraction"];
    [_card06 setCategory:@"addition"];
    [_card07 setCategory:@"subtraction"];
    [_card08 setCategory:@"subtraction"];
    [_card09 setCategory:@"addition"];
    [_card10 setCategory:@"addition"];
    
    ////////////////////////////////////////////////////////////////
    int rand1 = arc4random()%11;
    int rand2 = arc4random()%11;
    int result1 = rand1 + rand2;
    _card01.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand1, rand2];
    [_card01.answers addObject:[NSNumber numberWithInt:result1]];
    [_card01.answers addObject:[NSNumber numberWithInt:result1 + 1]];
    [_card01.answers addObject:[NSNumber numberWithInt:result1 -1]];
    [_card01.answers addObject:[NSNumber numberWithInt:(result1 + 3)]];



    /////////////////////////////////////////////////////////////////
    int rand3 = arc4random()%11;
    int rand4 = arc4random()%11;
    int result2 = rand3 + rand4;
    _card02.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand3, rand4];
    [_card02.answers addObject:[NSNumber numberWithInt:result2 + 1]];
    [_card02.answers addObject:[NSNumber numberWithInt:result2]];
    [_card02.answers addObject:[NSNumber numberWithInt:result2 -4]];
    [_card02.answers addObject:[NSNumber numberWithInt:(result2 -2)]];
    /////////////////////////////////////////////////////////////////
    int rand5 = arc4random()%11;
    int rand6 = arc4random()%11;
    int result3 = rand5 + rand6;
    _card03.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand5, rand6];
    [_card03.answers addObject:[NSNumber numberWithInt:result3 - 1]];
    [_card03.answers addObject:[NSNumber numberWithInt:result3 +3]];
    [_card03.answers addObject:[NSNumber numberWithInt:result3]];
    [_card03.answers addObject:[NSNumber numberWithInt:(result3 + +1)]];
    /////////////////////////////////////////////////////////////////
    int rand7 = arc4random()%11;
    int rand8 = arc4random()%11;
    int result4 = rand7 - rand8;
    _card04.picture = [NSString stringWithFormat:@"%d" @" - " "%d", rand7, rand8];
    [_card04.answers addObject:[NSNumber numberWithInt:(result4 +1)]];
    [_card04.answers addObject:[NSNumber numberWithInt:(result4 + 2)]];
    [_card04.answers addObject:[NSNumber numberWithInt:(result4) +4]];
    [_card04.answers addObject:[NSNumber numberWithInt:(result4)]];

    /////////////////////////////////////////////////////////////////

    
    int rand9 = arc4random()%11;
    int rand10 = arc4random()%11;
    int result5 = rand9 - rand10;
    _card05.picture = [NSString stringWithFormat:@"%d" @" - " "%d", rand9, rand10];
    [_card05.answers addObject:[NSNumber numberWithInt:(result5)]];
    [_card05.answers addObject:[NSNumber numberWithInt:(result5 +2)]];
    [_card05.answers addObject:[NSNumber numberWithInt:(result5) -4]];
    [_card05.answers addObject:[NSNumber numberWithInt:(result5 + 1)]];

    /////////////////////////////////////////////////////////////////
    
    int rand11 = arc4random()%11;
    int rand12 = arc4random()%11;
    int result6 = rand11 + rand12;
    _card06.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand11, rand12];
    [_card06.answers addObject:[NSNumber numberWithInt:(result6)-2]];
    [_card06.answers addObject:[NSNumber numberWithInt:(result6 +2)]];
    [_card06.answers addObject:[NSNumber numberWithInt:(result6) +1]];
    [_card06.answers addObject:[NSNumber numberWithInt:(result6)]];
    /////////////////////////////////////////////////////////////////
    
    int rand13 = arc4random()%11;
    int rand14 = arc4random()%11;
    int result7 = rand13 - rand14;
    _card07.picture = [NSString stringWithFormat:@"%d" @" - " "%d", rand13, rand14];
    [_card07.answers addObject:[NSNumber numberWithInt:(result7 +1)]];
    [_card07.answers addObject:[NSNumber numberWithInt:(result7 + 2)]];
    [_card07.answers addObject:[NSNumber numberWithInt:(result7)]];
    [_card07.answers addObject:[NSNumber numberWithInt:(result7)-3]];
    ////////////////////////////////////////////////////////////////
    int rand15 = arc4random()%11;
    int rand16 = arc4random()%11;
    int result8 = rand15 - rand16;
    _card08.picture = [NSString stringWithFormat:@"%d" @" - " "%d", rand15, rand16];
    [_card08.answers addObject:[NSNumber numberWithInt:(result8 + 1 )]];
    [_card08.answers addObject:[NSNumber numberWithInt:(result8)]];
    [_card08.answers addObject:[NSNumber numberWithInt:(result8) - 3]];
    [_card08.answers addObject:[NSNumber numberWithInt:(result8 + 3)]];
    ////////////////////////////////////////////////////////////////
    int rand17 = arc4random()%11;
    int rand18 = arc4random()%11;
    int result9 = rand17  + rand18;
    _card09.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand17, rand18];
    [_card09.answers addObject:[NSNumber numberWithInt:(result9 + 1 )]];
    [_card09.answers addObject:[NSNumber numberWithInt:(result9) +2]];
    [_card09.answers addObject:[NSNumber numberWithInt:(result9)]];
    [_card09.answers addObject:[NSNumber numberWithInt:(result9 + 3)]];
    ////////////////////////////////////////////////////////////////
    int rand19 = arc4random()%11;
    int rand20 = arc4random()%11;
    int result10 = rand19  + rand20;
    _card10.picture = [NSString stringWithFormat:@"%d" @" + " "%d", rand19, rand20];
    [_card10.answers addObject:[NSNumber numberWithInt:(result10 + 2 )]];
    [_card10.answers addObject:[NSNumber numberWithInt:(result10) +5]];
    [_card10.answers addObject:[NSNumber numberWithInt:(result10) -1]];
    [_card10.answers addObject:[NSNumber numberWithInt:(result10)]];

    ///////////////////////////////////////////////////////////////
    
    [self addQuestion:_card01];
    [self addQuestion:_card02];
    [self addQuestion:_card03];
    [self addQuestion:_card04];
    [self addQuestion:_card05];
    [self addQuestion:_card06];
    [self addQuestion:_card07];
    [self addQuestion:_card08];
    [self addQuestion:_card09];
    [self addQuestion:_card10];


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

