//
//  Authentification.h
//  Inventaire
//
//  Created by amadou diallo on 10/26/12.
//  Copyright (c) 2012 amadou diallo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AuthentViewController : UIViewController


@property (nonatomic,strong) IBOutlet UITextField* loginTxtField;
@property (nonatomic,strong) IBOutlet UITextField* pwdTextField;
@property (nonatomic,strong) IBOutlet UIButton* sendButton;

- (IBAction)sendLogin:(id)sender;

@end
