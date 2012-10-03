//
//  CarCell.m
//  CustomTabBar
//
//  Created by Purvag Patel on 10/27/11.
//  Copyright 2011 IIT. All rights reserved.
//

#import "CarCell.h"

@implementation CarCell

@synthesize nameLabel, idLabel;
@synthesize icon;

- (void)layoutSubviews {
	
	[super layoutSubviews];
	
	CGRect contentRect = self.contentView.bounds;
	
	CGFloat boundsX = contentRect.origin.x;
	
	CGRect frame;
	
	frame= CGRectMake(boundsX+10 ,0, 44, 44);
	
	icon.frame = frame;
	
	frame= CGRectMake(boundsX+70 ,5, 300, 25);
	
	nameLabel.frame = frame;
	
	frame= CGRectMake(boundsX+70 ,25, 150, 15);
	
	idLabel.frame = frame;
	
}

- (id)initWithFrame:(CGRect)frame reuseIdentifier:(NSString *)reuseIdentifier {
	
	if (self = [super initWithFrame:frame reuseIdentifier:reuseIdentifier]) {
		
		// Initialization code
		
		nameLabel = [[UILabel alloc]init];
		
		nameLabel.textAlignment = UITextAlignmentLeft;
		
		nameLabel.font = [UIFont systemFontOfSize:14];
		
		idLabel = [[UILabel alloc]init];
		
		idLabel.textAlignment = UITextAlignmentLeft;
		
		idLabel.font = [UIFont systemFontOfSize:6];
		
		icon = [[UIImageView alloc]init];
		
		[self.contentView addSubview:nameLabel];
		
		[self.contentView addSubview:idLabel];
		
		[self.contentView addSubview:icon];
		
	}
	
	return self;
	
}
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code.
    }
    return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state.
}


- (void)dealloc {
    [super dealloc];
}

@end
