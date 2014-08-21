//
//  day3AcademyViewController.h
//  Academy387Day3
//
//  Created by Faik Catibusic on 8/20/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Student.h"

@interface day3AcademyViewController : UIViewController

@property Student *localStudent;

@property (weak, nonatomic) IBOutlet UITextField *firstNameText;

@property (weak, nonatomic) IBOutlet UITextField *lastNameText;

@property (weak, nonatomic) IBOutlet UILabel *fullNameText;

@property (weak, nonatomic) IBOutlet UILabel *aboutThisClass;

@end
