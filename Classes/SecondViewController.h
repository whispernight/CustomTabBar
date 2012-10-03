//
//  SecondViewController.h
//  CustomTabBar
//
//  Created by iit cct2 on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondViewController : UIViewController {
	//#############
	//## general ##
	//#############
	IBOutlet UIView *view1;
	IBOutlet UIView *view2;
	IBOutlet UIView *view3;
	
	NSMutableArray *fordArray;
	NSMutableArray *chevArray;
	NSMutableArray *dodgeArray;
	NSMutableArray *def;

	Boolean ford;
	Boolean chev;
	Boolean dodge;

	NSInteger car;
	
	//##################
	//## View1/Quartz ##
	//##################
	IBOutlet UIButton *b1;
	
	//###########
	//## view2 ##
	//###########
	IBOutlet UILabel *model;
	IBOutlet UIImageView *picture;
	IBOutlet UISwitch *hideShowInfo;
	IBOutlet UITextView *info;
	IBOutlet UIButton *backbutton;

	//###########
	//## view3 ##
	//###########
	IBOutlet UIPickerView *p1;
	IBOutlet UILabel *l1;
	IBOutlet UIButton *fordbutton;
	IBOutlet UIButton *chevroletbutton;
	IBOutlet UIButton *dodgebutton;
	IBOutlet UIButton *next1;



	
}
//#############
//## general ##
//#############
@property (retain,nonatomic) UIView *view1;
@property (retain,nonatomic) UIView *view2;
@property (retain,nonatomic) UIView *view3;
@property (retain,nonatomic) NSMutableArray *fordArray;
@property (retain,nonatomic) NSMutableArray *chevArray;
@property (retain,nonatomic) NSMutableArray *dodgeArray;
@property (retain,nonatomic) NSMutableArray *def;
//@property (readwrite,nonatomic) Boolean *ford;
//@property (readwrite,nonatomic) Boolean *chev;
//@property (readwrite,nonatomic) Boolean *dodge;


@property (readwrite) NSInteger car;

//##################
//## View1/Quartz ##
//##################
@property (retain,nonatomic) UIButton *b1;

//###########
//## view2 ##
//###########
@property (retain, nonatomic) UILabel *model;
@property (retain, nonatomic) UIImageView *picture;
@property (retain, nonatomic) UISwitch *hideShowInfo;
@property (retain, nonatomic) UITextView *info;
@property (retain,nonatomic) UIButton *backbutton;

//###########
//## view3 ##
//###########
@property (retain,nonatomic) UIPickerView *p1;
@property (retain,nonatomic) UILabel *l1;
@property (retain,nonatomic) UIButton *fordbutton;
@property (retain,nonatomic) UIButton *chevroletbutton;
@property (retain,nonatomic) UIButton *dodgebutton;
@property (retain,nonatomic) UIButton *next1;



-(IBAction) clickednext1: (id) sender; //Next to next view
-(IBAction) clickedbackbutton: (id) sender; //Go back in other view
-(IBAction) clickedb1: (id) sender;	//Go back
-(IBAction) clickedford: (id) sender; //When the ICON of FORD brand is clicked
-(IBAction) clickedchevrolet: (id) sender;	//When the ICON of CHEVROLET brand is clicked
-(IBAction) clickeddodge: (id) sender;	//When the ICON of DODGE brand is clicked
-(IBAction) HideShow: (id) sender; //Hide and Show the info...is controlled with a UISwitch
@end
