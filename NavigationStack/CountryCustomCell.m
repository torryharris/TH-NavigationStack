//
//  CountryCustomCell.m
//  DP1
//
//  Created by Umakanta on 12/11/13.
//  Copyright (c) 2013 THBS. All rights reserved.
//

#import "CountryCustomCell.h"

@implementation CountryCustomCell
@synthesize countryName,countryImg;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        
        countryImg = [[UIImageView alloc]initWithFrame:CGRectMake(10, 3, 68, 45)];
        countryImg.layer.masksToBounds=YES;
        //countryImg.image = [UIImage imageNamed:@"car_image_placeholder.jpg"];
        countryImg.contentMode = UIViewContentModeScaleAspectFit;
        countryImg.layer.borderWidth = 0.5;
        countryImg.layer.borderColor = [UIColor lightGrayColor].CGColor;
        
        countryName=[[UILabel alloc]initWithFrame:CGRectMake(90, 5, 200, 40)];
        countryName.backgroundColor=[UIColor clearColor];
        countryName.textAlignment=NSTextAlignmentLeft;
        countryName.font=[UIFont fontWithName:@"HelveticaNeue-Bold" size:16.0];
        countryName.minimumScaleFactor=0.75f;
                
        
        [self.contentView addSubview:countryName];
        [self.contentView addSubview:countryImg];
        
        
        
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
