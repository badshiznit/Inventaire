//
//  ObjetsViewController.h
//  Inventaire
//
//  Created by amadou diallo on 10/26/12.
//  Copyright (c) 2012 amadou diallo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ObjetsViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,strong) IBOutlet UITableView* tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *cameraButton;



@end
