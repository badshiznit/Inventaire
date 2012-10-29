//
//  LocalisationViewController.m
//  Inventaire
//
//  Created by amadou diallo on 10/26/12.
//  Copyright (c) 2012 amadou diallo. All rights reserved.
//

#import "LocalisationViewController.h"

@interface LocalisationViewController ()

@property(nonatomic,strong) NSMutableArray* buildings;
@property(nonatomic,strong) NSMutableArray* floors;
@property(nonatomic,strong) NSMutableArray* offices;

@end

@implementation LocalisationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        self.pickerview.dataSource = self;
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.floors = [[NSMutableArray alloc] init];
    [self.floors addObject:@" 10 "];
    [self.floors addObject:@" 20 "];
    [self.floors addObject:@" 40 "];
    [self.floors addObject:@" 60 "];
    [self.floors addObject:@" 100 "];
    
    self.buildings = [[NSMutableArray alloc] init];
    [self.buildings addObject:@" 100 "];
    [self.buildings addObject:@" 200 "];
    [self.buildings addObject:@" 400 "];
    [self.buildings addObject:@" 600 "];
    [self.buildings addObject:@" 1000 "];
    
    self.offices = [[NSMutableArray alloc] init];
    [self.offices addObject:@" 1 "];
    [self.offices addObject:@" 2 "];
    [self.offices addObject:@" 4 "];
    [self.offices addObject:@" 6 "];
    [self.offices addObject:@" 100 "];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionExplore:(id)sender {
}

- (IBAction)cancelAction:(id)sender
{
   // [self dismissModalViewControllerAnimated:YES];
}


#pragma PickerView delegate functions

-(void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"Picker did select Row : %d in Component : %d",row,component);
    switch (component)
    {
        case 0:
            self.buildingTxtField.text = (NSString*)[self.buildings objectAtIndex:row];
            break;
        case 1:
            self.floorTxtField.text = (NSString*)[self.floors objectAtIndex:row];
            break;
        case 2:
            self.officeTxtField.text = (NSString*)[self.offices objectAtIndex:row];
            break;
            
        default:
            //return 0;
            break;
    }
}

-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return self.buildings.count;
            break;
        case 1:
            return self.floors.count;
            break;
        case 2:
            return self.offices.count;
            break;
            
        default:
            return 0;
            break;
    }    
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 3;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 50;
}

-(CGFloat) pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return 100;
}

- (NSString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (component)
    {
        case 0:
            return (NSString *)[self.buildings objectAtIndex:row];
            break;
        case 1:
            return (NSString *)[self.floors objectAtIndex:row];
            break;
        case 2:
            return (NSString *)[self.offices objectAtIndex:row];
            break;
            
        default:
            return 0;
            break;
    }
}
/*
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    return view;
}*/

@end
