//
//  FirstViewController.m
//  CustomTabBar
//
//  Created by KnappLab 1 on 10/31/11.
//  Copyright Illinois Institute of Technology 2011. All rights reserved.
//

#import "FirstViewController.h"
#import "CarCell.h"

@implementation FirstViewController
@synthesize TableView;
@synthesize contentArray;


- (void)viewDidLoad {

    [super viewDidLoad];
    contentArray = [[NSMutableArray alloc] init];
	[contentArray addObject:@"Ford Fiesta"]; //Car 0
	[contentArray addObject:@"Ford Focus"]; //Car 1
	[contentArray addObject:@"Ford Fusion"]; //Car 2
	[contentArray addObject:@"Ford Mustang"]; //Car 3
	[contentArray addObject:@"Ford Taurus"]; //Car 4
	[contentArray addObject:@"Chevrolet Sonic"]; //Car 5
	[contentArray addObject:@"Chevrolet Cruze"]; //Car 6
	[contentArray addObject:@"Chevrolet Volt"]; //Car 7
	[contentArray addObject:@"Chevrolet Malibu"]; //Car 8
	[contentArray addObject:@"Chevrolet Impala"]; //Car 9
	[contentArray addObject:@"Chevrolet HHR"]; //Car 10
	[contentArray addObject:@"Chevrolet Camaro"]; //Car 11
	[contentArray addObject:@"Chevrolet Corvette"]; //Car 12
	[contentArray addObject:@"Dodge Challenger"]; //Car 13
	[self setTitle:@"Models"];
	self.TableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background5.jpg"]];

}


- (NSInteger)tableView:(UITableView *)TableView numberOfRowsInSection:(NSInteger)section
{
//	NSLog(@"inside number of row %d", [contentArray count]);
	return [contentArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfSections:(NSInteger)section
{
	return 3;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	static NSString *CellIdentifier = @"StudentNameCell";
	
	CarCell *cell = (CarCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	if (cell == nil) {
		
		NSArray *topLevelObjects = [[NSBundle mainBundle] loadNibNamed:@"CarCell" owner:nil options:nil];
		
		for (id currentObject in topLevelObjects) {
			if ([currentObject isKindOfClass:[CarCell class]]) {
				cell = (CarCell*)currentObject;
				break;
			}
		}
	}
	[[cell nameLabel] setText:[contentArray objectAtIndex:[indexPath row]]];
	NSString *Model= [cell nameLabel].text;
	NSRange range = [Model rangeOfString : @"Ford"];
	
	if (range.location != NSNotFound) {
		NSLog(@"I found something.");
		[[cell idLabel] setText:@"Be the best driving the best"];
		cell.icon.image = [UIImage imageNamed:@"fordicon.png"];
	}
	
	range = [Model rangeOfString : @"Chevrolet"];
	
	if (range.location != NSNotFound) {
		NSLog(@"I found something.");
		[[cell idLabel] setText:@"Always innovate"];
		cell.icon.image = [UIImage imageNamed:@"chevroleticon.png"];
	}

	range = [Model rangeOfString : @"Dodge"];
	
	if (range.location != NSNotFound) {
		NSLog(@"I found something.");
		[[cell idLabel] setText:@"Hardest ever!"];
		cell.icon.image = [UIImage imageNamed:@"dodgeicon.jpg"];
	}
	return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    int row = indexPath.row;
	NSLog(@"selected row: %i", row);
//	if(self.secondViewController == nil)
//    {
//        SecondViewController *viewTwo = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:[NSBundle mainBundle]];
//       self.secondViewController = viewTwo;
//      [viewTwo release];
//    }
//    secondViewController.car = [[NSString alloc] initWithFormat:@"The row is secondviewC is %i", row];
//    secondViewController.car = row;
//	secondViewController.CarSelected;
}   


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {}

- (void)dealloc {
    [super dealloc];
}

@end
