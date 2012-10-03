//
//  SecondViewController.m
//  CustomTabBar
//
//  Created by iit cct2 on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "FirstViewController.h"

@implementation SecondViewController
@synthesize model;
@synthesize picture;
@synthesize hideShowInfo;
@synthesize info;
@synthesize car;
@synthesize view1;
@synthesize view2;
@synthesize view3;
@synthesize b1;
@synthesize fordbutton;
@synthesize chevroletbutton;
@synthesize dodgebutton;
@synthesize l1;
@synthesize p1;
@synthesize fordArray;
@synthesize chevArray;
@synthesize dodgeArray;
@synthesize def;
@synthesize next1;
@synthesize backbutton;
//@synthesize ford;
//@synthesize chev;
//@synthesize dodge;


-(IBAction) clickedbackbutton: (id) sender {
	hideShowInfo.on=false;
	info.hidden=true;
	[self.view bringSubviewToFront:view3];
	[view2 removeFromSuperview];
}

-(IBAction) clickednext1: (id) sender {
	if (ford) {
		[self.view addSubview: view2];
		switch (car) {
			case 0:
				model.text = @"Ford Fiesta";
				info.text =@"Fuel efficient and fun - the 2012 Fiesta is both. \n The Fiesta SE with the SFE Package delivers up to 40 mpg hwy.\n Its sporty, agile performance comes courtesy of the technical precision only a Ford-tuned suspension can offer.\n Taking on straightaways is a smooth affair, too, when you combine electric power-assisted steering (EPAS) with the proprietary Ford invention - active nibble control.\n Covert aerodynamic design and critical technology such as the class-exclusive* dual dry-clutch PowerShift™ six-speed automatic transmission and 1.6L Ti-VCT Duratec® I-4 engine with twin independent variable cam timing make driving Fiesta a responsive and fuel-responsible exhilarating experience.";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"fiesta1.jpg"],
										   [UIImage imageNamed:@"fiesta2.jpg"],
										   [UIImage imageNamed:@"fiesta3.jpg"],
										   [UIImage imageNamed:@"fiesta4.jpg"], nil];
				picture.animationDuration = 4.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 1:
				model.text = @"Ford Focus";
				info.text =@"The Ford Focus......";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"focus1.jpg"],
										   [UIImage imageNamed:@"focus2.jpg"],
										   [UIImage imageNamed:@"focus3.jpg"], nil];
				picture.animationDuration = 3.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 2:
				model.text = @"Ford Fusion";
				info.text =@"The Ford Fusion....";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"fusion1.jpg"],
										   [UIImage imageNamed:@"fusion2.jpg"],
										   [UIImage imageNamed:@"fusion3.jpg"],
										   [UIImage imageNamed:@"fusion4.jpg"],
										   [UIImage imageNamed:@"fusion5.jpg"], nil];
				picture.animationDuration = 5.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 3:
				model.text = @"Ford Mustang";
				info.text =@"The Ford Mustang...is the best car!";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"mustang1.jpg"],
										   [UIImage imageNamed:@"mustang2.jpg"],
										   [UIImage imageNamed:@"mustang3.jpg"],
										   [UIImage imageNamed:@"mustang4.jpg"], nil];
				picture.animationDuration = 4.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 4:
				model.text = @"Ford Taurus";
				info.text =@"The Ford Taurus....";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"taurus1.jpg"],
										   [UIImage imageNamed:@"taurus2.jpg"],
										   [UIImage imageNamed:@"taurus3.jpg"],
										   [UIImage imageNamed:@"taurus4.jpg"], nil];
				picture.animationDuration = 4.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;				
			default:
				break;
		}
	}
	if (chev) {
		[self.view addSubview: view2];
		switch (car) {
			case 0:
				model.text = @"Chevrolet Sonic";
				info.text =@"The Chevrolet Sonic ...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"Sonic1.jpg"],
										   [UIImage imageNamed:@"Sonic2.jpg"],
										   [UIImage imageNamed:@"Sonic3.jpg"],
										   [UIImage imageNamed:@"Sonic4.jpg"],
										   [UIImage imageNamed:@"Sonic5.jpg"], nil];
				picture.animationDuration = 5.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 1:
				model.text = @"Chevrolet Cruze";
				info.text =@"The Chevrolet Cruze ...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"cruze1.jpg"],
										   [UIImage imageNamed:@"cruze2.jpg"], nil];
				picture.animationDuration = 2.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 2:
				model.text = @"Chevrolet Volt";
				info.text =@"The Chevrolet Volt ...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"volt1.jpg"],
										   [UIImage imageNamed:@"volt2.jpg"], nil];
				picture.animationDuration = 2.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 3:
				model.text = @"Chevrolet Malibu";
				info.text =@"The Chevrolet Malibu ...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"malibu1.jpg"],
										   [UIImage imageNamed:@"malibu2.jpg"], nil];
				picture.animationDuration = 2.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 4:
				model.text = @"Chevrolet Impala";
				info.text =@"The Chevrolet Impala ...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"impala1.jpg"],
										   [UIImage imageNamed:@"impala2.jpg"], nil];
				picture.animationDuration = 2.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 5:
				model.text = @"Chevrolet HHR";
				info.text =@"The Chevrolet HHR...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"hhr1.jpg"],
										   [UIImage imageNamed:@"hhr2.jpg"],nil];
				picture.animationDuration = 2.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 6:
				model.text = @"Chevrolet Camaro";
				info.text =@"The Chevrolet Camaro is one of the best choices you have if you want a sport car!...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"camaro1.jpg"],
										   [UIImage imageNamed:@"camaro2.jpg"],
										   [UIImage imageNamed:@"camaro3.jpg"],
										   [UIImage imageNamed:@"camaro4.jpg"], nil];
				picture.animationDuration = 4.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			case 7:
				model.text = @"Chevrolet Corvette";
				info.text =@"No doubt, the Chevrolet Corvette is what you are looking for!...";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"corvette1.jpg"],
										   [UIImage imageNamed:@"corvette2.jpg"],
										   [UIImage imageNamed:@"corvette3.jpg"], nil];
				picture.animationDuration = 3.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			default:
				break;
		}
		
	}
	if (dodge) {
		[self.view addSubview: view2];
		switch (car) {
			case 0:
				model.text = @"Dodge Challenger";
				info.text =@"The Challenger, BE ON THE ROAD!";
				picture.hidden=false;
				picture.animationImages = [NSArray arrayWithObjects:
										   [UIImage imageNamed:@"challenger1.jpg"],
										   [UIImage imageNamed:@"challenger2.jpg"],
										   [UIImage imageNamed:@"challenger3.jpg"], nil];
				picture.animationDuration = 3.00; //1 second per image
				picture.animationRepeatCount = 0; //infinite
				[picture startAnimating]; //start the animation
				break;
			default:
				break;
		}
	}
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	if (ford) {
		return [fordArray count];
	}
	if (chev) {
		return [chevArray count];
	}
	if (dodge) {
		return [dodgeArray count];
	}
	else {
		return [def count];
	}
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	if (ford) {
		return [fordArray objectAtIndex:row];
	}
	if (chev) {
		return [chevArray objectAtIndex:row];
	}
	if (dodge) {
		return [dodgeArray objectAtIndex:row];
	}
	else {
		return [def objectAtIndex:row];
	}
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	car = row;
}
-(void) viewDidLoad {
	[info setEditable:NO];
	
	ford=false;
	chev=false;
	dodge=false;
	[super viewDidLoad];

	def = [[NSMutableArray alloc] init];
	[def addObject:@"Select one brand!"];
	
	fordArray = [[NSMutableArray alloc] init];
	[fordArray addObject:@"Ford Fiesta"];
	[fordArray addObject:@"Ford Focus"];
	[fordArray addObject:@"Ford Fusion"];
	[fordArray addObject:@"Ford Mustang"];
	[fordArray addObject:@"Ford Taurus"];
	
	chevArray = [[NSMutableArray alloc] init];
	[chevArray addObject:@"Chevrolet Sonic"];
	[chevArray addObject:@"Chevrolet Cruze"];
	[chevArray addObject:@"Chevrolet Volt"];
	[chevArray addObject:@"Chevrolet Malibu"];
	[chevArray addObject:@"Chevrolet Impala"];
	[chevArray addObject:@"Chevrolet HHR"];
	[chevArray addObject:@"Chevrolet Camaro"];
	[chevArray addObject:@"Chevrolet Corvette"];

	dodgeArray = [[NSMutableArray alloc] init];
	[dodgeArray addObject:@"Dodge Challenger"];
}
-(IBAction) clickedford: (id) sender {	
	ford=true;
	chev=false;
	dodge=false;
	l1.text=@"FORD:";
    [p1 selectRow:0 inComponent:0 animated:YES];	
	[p1 reloadComponent:0];
}
-(IBAction) clickedchevrolet: (id) sender {
	ford=false;
	chev=true;
	dodge=false;
	l1.text=@"CHEVROLET:";
	[p1 selectRow:0 inComponent:0 animated:YES];
	[p1 reloadComponent:0];
}
-(IBAction) clickeddodge: (id) sender {
	ford=false;
	chev=false;
	dodge=true;
	l1.text=@"DODGE:";
	[p1 selectRow:0 inComponent:0 animated:YES];
	[p1 reloadComponent:0];
}

-(IBAction) clickedb1: (id) sender {
	[self.view addSubview: view3];}
-(IBAction) HideShow: (id) sender {
	if (hideShowInfo.on) {
		info.hidden=false;}
	else {
		info.hidden=true;}
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (void)viewDidUnload {
    [super viewDidUnload];
}
- (void)dealloc {
    [super dealloc];
}
@end
