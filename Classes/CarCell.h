//
//  CarCell.h
//  CustomTabBar
//
//  Created by Purvag Patel on 10/27/11.
//  Copyright 2011 IIT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CarCell : UITableViewCell {
	
	IBOutlet UILabel *nameLabel;
	IBOutlet UILabel *idLabel;
	IBOutlet UIImageView *icon;
    
}

@property(nonatomic,retain) IBOutlet UILabel *nameLabel;
@property(nonatomic,retain) IBOutlet UILabel *idLabel;
@property(nonatomic,retain) IBOutlet UIImageView *icon;


@end
