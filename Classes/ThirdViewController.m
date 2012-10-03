//
//  ThirdViewController.m
//  CustomTabBar
//
//  Created by iit cct2 on 11/1/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"


@implementation ThirdViewController
@synthesize view1;

@synthesize view2;
@synthesize head;
@synthesize contact;
@synthesize info;
@synthesize pickerView;
@synthesize nextbutton;
@synthesize backbutton;
@synthesize arrayAddress;
@synthesize city;


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[info setEditable:NO];
	[followInstructions setEditable:NO];

	[super viewDidLoad];
	arrayAddress = [[NSMutableArray alloc] init];
	[arrayAddress addObject:@"Boston"];
	[arrayAddress addObject:@"Chicago"];
	[arrayAddress addObject:@"Denver"];
	[arrayAddress addObject:@"Detroit"];
	[arrayAddress addObject:@"New York"];
	[arrayAddress addObject:@"San Francisco"];
	[arrayAddress addObject:@"Washington"];
	
	
}
//PickerViewController.m
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
	return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
	return [arrayAddress count];
}
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
	return [arrayAddress objectAtIndex:row];
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

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
	NSLog(@"Selected City: %@. Index of selected city: %i", [arrayAddress objectAtIndex:row], row);
	city = row;
}


-(void) selectedCity: (id) sender {
	[self.view addSubview: view2];

//	[self.view bringSubviewToFront:view2];
//	[view1 removeFromSuperview];
//	[view2 release];
	
	info.text = @"We have stores in the following address/es:";
	NSLog(@"im here!");

switch (city) {
	case 0:
		contact.text = @"Boston";
		followInstructions.text =@"1234 Fake S. MA,30453";
		break;
	case 1:
		contact.text = @"Chicago";
		followInstructions.text =@"3702 N.Sheffield Ave. IL, 60657";
		break;
	case 2:
		contact.text = @"Denver";
		followInstructions.text =@"5678 Fake S. CO,30453";
		break;
	case 3:
		contact.text = @"Detroit";
		followInstructions.text =@"234 Fake S. MI,30453";
		break;
	case 4:
		contact.text = @"NewYork";
		followInstructions.text =@"168 Fake S. NY,30453";
		break;
	case 5:
		contact.text = @"San Francisco";
		followInstructions.text =@"398 Waveland S. CA,30453";
		break;
	case 6:
		contact.text = @"Washington";
		followInstructions.text =@"1876 Swiss Park Ave. DC,30453\n\n874 New South Ave. DC,12943";
		break;
	default:
		break;
}}

-(void) selectedBack: (id) sender {
	[self.view bringSubviewToFront:view1];
	[view2 removeFromSuperview];
}
	


@end
