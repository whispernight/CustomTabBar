//
//  ThirdViewController.h
//  CustomTabBar
//
//  Created by iit cct2 on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThirdViewController : UIViewController {
	IBOutlet UIView *view1;
	IBOutlet UIView *view2;
	IBOutlet UILabel *head;
	IBOutlet UILabel *contact;
	IBOutlet UITextView *info;
	IBOutlet UIPickerView *pickerView;
	IBOutlet UIButton *nextbutton;
	IBOutlet UIButton *backbutton;
	NSMutableArray *arrayAddress;
	NSInteger city;
	IBOutlet UITextView *followInstructions;
	UIImage *picture;

}

@property (retain,nonatomic) UIView *view1;
@property (retain,nonatomic) UIView *view2;
@property (retain,nonatomic) UILabel *head;
@property (retain,nonatomic) UILabel *contact;
@property (retain,nonatomic) UITextView *info;
@property (retain,nonatomic) UIPickerView *pickerView;
@property (retain,nonatomic) UIButton *nextbutton;
@property (retain,nonatomic) UIButton *backbutton;
@property (retain,nonatomic) NSMutableArray *arrayAddress;
@property (readwrite,nonatomic) NSInteger city;
@property (retain, nonatomic) UITextView *followInstructions;
@property (retain,nonatomic) UIImage *picture;



-(void) selectedCity: (id) sender;
-(void) selectedBack: (id) sender;

@end
