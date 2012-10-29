//
//  LocalisationViewController.h
//  Inventaire
//
//  Created by amadou diallo on 10/26/12.
//  Copyright (c) 2012 amadou diallo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocalisationViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>

@property (nonatomic,strong) IBOutlet UITextField* buildingTxtField;
@property (nonatomic,strong) IBOutlet UITextField* floorTxtField;
@property (nonatomic,strong) IBOutlet UITextField* officeTxtField;

@property (nonatomic,strong) IBOutlet UIPickerView* pickerview;

@property (nonatomic,strong) IBOutlet UIButton* exploreButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *cancelButton;


- (IBAction)actionExplore:(id)sender;
- (IBAction)cancelAction:(id)sender;


@end
