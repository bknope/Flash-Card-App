//
//  playingCardGame.m
//  CalcFlashDemo
//
//  Created by Alex Greenberg on 12/21/14.
//  Copyright (c) 2014 MakerMason. All rights reserved.
//

#import "playingCardGame.h"
@interface playingCardGame()

@property (strong, nonatomic) NSArray *pictureNames;
@end
@implementation playingCardGame

- (NSArray *) pictureNames
{
    if(!_pictureNames)
    {
        _pictureNames = [NSArray array];
        
    }
    return  _pictureNames;
    
    
}

@end
