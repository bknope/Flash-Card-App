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
    _labelText.text = [NSString stringWithFormat:@"Answer: %@", _card.picture];
   
    _startGameButton.enabled = NO;
    
    
    
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
     _labelText.text = [NSString stringWithFormat:@"Answer: %@", _card.picture];
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
