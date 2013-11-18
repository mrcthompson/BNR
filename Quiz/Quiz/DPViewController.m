//
//  DPViewController.m
//  Quiz
//
//  Created by Chris Thompson on 18/11/2013.
//  Copyright (c) 2013 Chris Thompson. All rights reserved.
//

#import "DPViewController.h"

@interface DPViewController ()

@end

@implementation DPViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    // Call the init method implemented by the superclass
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        //Create 2 arrays and make the pointers point to them
        
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // Add questions to the array
        
        [questions addObject:@"What is 7+7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of vermont?"];
        [answers addObject:@"Montpellier"    ];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
    }
    
    // Return the address of the new object
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    //step to the next question
    currentQuestionIndex++;
    
    // AM i passed the last question?
    if (currentQuestionIndex == [questions count])
    {
        currentQuestionIndex = 0;
    }
    
    
    //get the string at that index in the array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    //log to console
    NSLog(@"displaying question: %@",question);
    
    //display the question in the view
    [questionField setText:question];
    
    //clear the answer field
    [answerField setText:@"???"];
    
}

- (IBAction)showAnswer:(id)sender
{
    // what is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Dislay the answer
    [answerField setText:answer];
    
}

@end
