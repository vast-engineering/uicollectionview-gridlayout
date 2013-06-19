//
//  AnimationCollectionViewController.m
//  Animation
//
//  Created by Tim Moose on 6/18/13.
//  Copyright (c) 2013 Vast.com. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "SortNFilterCollectionViewController.h"
#import "UIColor+Hex.h"

#define IDX_TEXT 0
#define IDX_COLOR 1

@implementation SortNFilterCollectionViewController

- (void)configureCell:(UICollectionViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    //retrieve the cell data for the given index path from the controller
    //and set the cell's text label and background color
    NSArray *item = [self.indexPathController.dataModel itemAtIndexPath:indexPath];
    UILabel *label = (UILabel *)[cell viewWithTag:1];
    label.text = item[IDX_TEXT];
    cell.backgroundColor = item[IDX_COLOR];
    cell.layer.cornerRadius = 6;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(VCollectionViewGridLayout *)layout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeZero;
}

#pragma mark - VCollectionViewGridLayout

- (id)identifierForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [self.indexPathController.dataModel identifierAtIndexPath:indexPath];
}

- (NSString *)sectionNameForSection:(NSInteger)section
{
    return [self.indexPathController.dataModel sectionNameForSection:section];
}

@end
