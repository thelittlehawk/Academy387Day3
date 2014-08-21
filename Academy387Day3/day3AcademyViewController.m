//
//  day3AcademyViewController.m
//  Academy387Day3
//
//  Created by Faik Catibusic on 8/20/14.
//  Copyright (c) 2014 Faik Catibusic. All rights reserved.
//

#import "day3AcademyViewController.h"

@interface day3AcademyViewController ()

@end

@implementation day3AcademyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Student Initialization
    self.localStudent = [Student alloc];
    self.localStudent.firstName = @"Academy";
    self.localStudent.lastName = @"Student";
    
    //self.localStudent = [[Student alloc] initWithFirstName:@"Academy" lastName:@"Student"];
    
    // Set UI elements
    self.firstNameText.text = self.localStudent.firstName;
    self.lastNameText.text = self.localStudent.lastName;

    // Update Full name text label
    [self updateFullName];
    
    // Class method
    self.aboutThisClass.text = [Student whoAmI];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveClicked:(id)sender {
    NSString *firstName = self.firstNameText.text;
    NSString *lastName = self.lastNameText.text;
    
    [self.localStudent changeFirstAndLastName:firstName lastName:lastName];
    [self updateFullName];
}

-(void)updateFullName {
    self.fullNameText.text = [self.localStudent getFullName];
}

// Close keyboard on "Return" button pressed
-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    [textField resignFirstResponder];
    return YES;
}

@end
