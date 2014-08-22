//
//  HouseListViewController.m
//  HomrMPRAC
//
//  Created by Meredith Packham on 8/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "HouseListViewController.h"
#import "HouseListTableViewCell.h"

@interface HouseListViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation HouseListViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    HouseListTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

}


@end
