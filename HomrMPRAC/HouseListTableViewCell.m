//
//  HouseListTableViewCell.m
//  HomrMPRAC
//
//  Created by Meredith Packham on 8/22/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "HouseListTableViewCell.h"

@implementation HouseListTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
