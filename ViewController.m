//
//  ViewController.m
//  CalcFlashDemo
//
//  Created by Alex Greenberg on 12/20/14.
//  Copyright (c) 2014 MakerMason. All rights reserved.
//

#import "ViewController.h"
#import "questionCard.h"
#import "questionDeck.h"
@interface ViewController ()
@property(strong, nonatomic) questionDeck* deck;
@property (strong, nonatomic) questionCard* card;
@property (weak, nonatomic) IBOutlet UILabel *labelText;
- (IBAction)beginButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *startGameButton;
- (IBAction)button1:(id)sender;
- (IBAction)button2:(id)sender;
- (IBAction)button3:(id)sender;
- (IBAction)button4:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button1Text;
@property (weak, nonatomic) IBOutlet UIButton *button2Text;
@property (weak, nonatomic) IBOutlet UIButton *button3Text;
@property (weak, nonatomic) IBOutlet UIButton *button4Text;



@end

@implementation ViewController

/*
-(questionCard*) testQCard
{
    if(!_testQCard) _testQCard = [self createCard];
    return _testQCard;
}
 */
-(questionCard*) createCard
{
    return [[questionCard alloc] init];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)beginButton:(id)sender {
    
    [sender setTitle:@" " forState:UIControlStateNormal];
    _deck = [[questionDeck alloc]init];
    _card = [[questionCard alloc]init];
    [_deck initializeDeck];
    _card = [_deck drawRandomCard];
    
    _labelText.text = [NSString stringWithFormat:@"%@"@" =", _card.picture];
   
    _startGameButton.enabled = NO;
    [_button1Text setTitle:_card.answers[0] forState:UIControlStateNormal];
    
    [_button2Text setTitle:_card.answers[1] forState:UIControlStateNormal];
    
    [_button3Text setTitle:_card.answers[2] forState:UIControlStateNormal];
    [_button4Text setTitle:_card.answers[3] forState:UIControlStateNormal];
    
}


- (IBAction)button1:(id)sender {
    //NSLog()
    if(_card.answer == 1)
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Correct!"
                                  message:@"Good Job!"
                                  delegate:nil
                                  cancelButtonTitle:@"Next Question"
                                  otherButtonTitles:nil];
        [alertView show];
        _card = [_deck drawRandomCard];
        [self upDateUI];

    }
    else
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Incorrect"
                                  message:@"Sorry.  Try Again?"
                                  delegate:nil
                                  cancelButtonTitle:@"Try Again"
                                  otherButtonTitles:nil];
        [alertView show];

    }
}
-(void) upDateUI
{
    
    if(_card.picture)
    {
    _labelText.text = [NSString stringWithFormat:@"%@"@" =", _card.picture];
    }
    else
        _labelText.text = @"";
    
    [_button1Text setTitle:_card.answers[0] forState:UIControlStateNormal];
    
    [_button2Text setTitle:_card.answers[1] forState:UIControlStateNormal];
    
    [_button3Text setTitle:_card.answers[2] forState:UIControlStateNormal];
    [_button4Text setTitle:_card.answers[3] forState:UIControlStateNormal];
    
    

}

- (IBAction)button2:(id)sender {
    if(_card.answer == 2)
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Correct!"
                                  message:@"Good Job!"
                                  delegate:nil
                                  cancelButtonTitle:@"Next Question"
                                  otherButtonTitles:nil];
        [alertView show];
        _card = [_deck drawRandomCard];
        [self upDateUI];
        
    }
    else
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Incorrect"
                                  message:@"Sorry.  Try Again?"
                                  delegate:nil
                                  cancelButtonTitle:@"Try Again"
                                  otherButtonTitles:nil];
        [alertView show];
        
    }

}

- (IBAction)button3:(id)sender {
    if(_card.answer == 3)
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Correct!"
                                  message:@"Good Job!"
                                  delegate:nil
                                  cancelButtonTitle:@"Next Question"
                                  otherButtonTitles:nil];
        [alertView show];
        _card = [_deck drawRandomCard];
        [self upDateUI];
        
    }
    else
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Incorrect"
                                  message:@"Sorry.  Try Again?"
                                  delegate:nil
                                  cancelButtonTitle:@"Try Again"
                                  otherButtonTitles:nil];
        [alertView show];
        
    }

}

- (IBAction)button4:(id)sender {
    if(_card.answer == 4)
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Correct!"
                                  message:@"Good Job!"
                                  delegate:nil
                                  cancelButtonTitle:@"Next Question"
                                  otherButtonTitles:nil];
        [alertView show];
        _card = [_deck drawRandomCard];
        [self upDateUI];
        
    }
    else
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Incorrect"
                                  message:@"Sorry.  Try Again?"
                                  delegate:nil
                                  cancelButtonTitle:@"Try Again"
                                  otherButtonTitles:nil];
        [alertView show];
        
    }

}
@end
