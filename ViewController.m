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
@property (nonatomic) int addition;
@property (nonatomic) int subtraction;
@property (nonatomic) int additionMax;
@property (nonatomic) int subtractionMax;
@property (nonatomic) BOOL firstTime;
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
    
    _addition = 0;
    _additionMax = 0;
    _subtraction = 0;
    _subtractionMax = 0;
    _firstTime = YES;
    [self upDateUI];
}

-(void) upDateUI
{
    
    if(_card.picture)
    {
    _labelText.text = [NSString stringWithFormat:@"%@"@" =", _card.picture];
    
    [_button1Text setTitle:[NSString stringWithFormat:@"%@"@" ", _card.answers[0]] forState:UIControlStateNormal];
    
    [_button2Text setTitle:[NSString stringWithFormat:@"%@"@" ", _card.answers[1]] forState:UIControlStateNormal];
    [_button3Text setTitle:[NSString stringWithFormat:@"%@"@" ", _card.answers[2]] forState:UIControlStateNormal];
    [_button4Text setTitle:[NSString stringWithFormat:@"%@"@" ", _card.answers[3]] forState:UIControlStateNormal];
    }
    
        else
        {
            _labelText.text = @"";
            [_button1Text setTitle:@" "forState:UIControlStateNormal];
            [_button2Text setTitle:@" "forState:UIControlStateNormal];
            [_button3Text setTitle:@" "forState:UIControlStateNormal];
            [_button4Text setTitle:@" "forState:UIControlStateNormal];
            _labelText.text = [NSString stringWithFormat:@"Addition: " @"%d" @"/" @"%d" @" Subtraction " @"%d" @"/" @"%d", _addition, _additionMax, _subtraction, _subtractionMax ];
            
            
        }
    
}

- (IBAction)button1:(id)sender {
    if(_card.answer == 1)
    {
        UIAlertView *alertView = [[[UIAlertView alloc] init]
                                  initWithTitle:@"Correct!"
                                  message:@"Good Job!"
                                  delegate:nil
                                  cancelButtonTitle:@"Next Question"
                                  otherButtonTitles:nil];
        [alertView show];
        
        if([_card.category isEqualToString :@"subtraction"])
        {
            

            if(_firstTime == YES)
            {
                _subtraction++;
                
            }
                        _subtractionMax++;
        }
        if([_card.category isEqualToString :@"addition"])
        {
            

            if(_firstTime == YES)
            {
                _addition++;
                
            }
           
            _additionMax++;
        }
        _firstTime = YES;
        
        
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
        _firstTime = NO;
        
        
        
        
    }
    
    
    

    
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
        if([_card.category isEqualToString :@"subtraction"])
        {
            
            
            if(_firstTime == YES)
            {
                _subtraction++;
                
            }
                        _subtractionMax++;
        }
        if([_card.category isEqualToString :@"addition"])
        {
            if(_firstTime == YES)
            {
                _addition++;
                
            }
                        _additionMax++;
        }
        _firstTime = YES;
        

        
        
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
        _firstTime = NO;

        
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
        
        
        if([_card.category isEqualToString :@"subtraction"])
        {
            
            
            if(_firstTime == YES)
            {
                _subtraction++;
                
            }
                       _subtractionMax++;
        }
        if([_card.category isEqualToString :@"addition"])
        {
            
            if(_firstTime == YES)
            {
                _addition++;
                
            }
                      _additionMax++;
        }
        _firstTime = YES;
        

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
        
        _firstTime = NO;

        
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
        
        
        if([_card.category isEqualToString :@"subtraction"])
        {
            
            if(_firstTime == YES)
            {
                _subtraction++;
                
            }
           
            _subtractionMax++;
        }
        if([_card.category isEqualToString :@"addition"])
        {
           
            
            if(_firstTime == YES)
            {
                _addition++;
                
            }
            
            _additionMax++;
        }
        _firstTime = YES;
        

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
        _firstTime = NO;
        
    }
    

}
@end
