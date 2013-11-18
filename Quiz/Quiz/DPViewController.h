//
//  DPViewController.h
//  Quiz
//
//  Created by Chris Thompson on 18/11/2013.
//  Copyright (c) 2013 Chris Thompson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPViewController : UIViewController
{
    int currentQuestionIndex;
    
    // The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    
    // The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
