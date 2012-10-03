//
//  FirstViewController.h
//  CustomTabBar
//
//  Created by KnappLab 1 on 10/31/11.
//  Copyright Illinois Institute of Technology 2011. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController {
    IBOutlet UITableView *TableView;
    NSMutableArray *contentArray;
}

@property (retain, nonatomic) UITableView *TableView;
@property (retain, nonatomic) NSMutableArray *contentArray;



@end
