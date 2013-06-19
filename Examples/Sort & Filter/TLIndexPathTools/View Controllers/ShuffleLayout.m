//
//  ShuffleLayout.m
//  Shuffle
//
//  Created by Tim Moose on 6/18/13.
//  Copyright (c) 2013 Tractable Labs. All rights reserved.
//

#import "ShuffleLayout.h"

@implementation ShuffleLayout

- (UICollectionViewLayoutAttributes *)initialLayoutAttributesForAppearingItemAtIndexPath:(NSIndexPath *)itemIndexPath
{
    UICollectionViewLayoutAttributes *pose = [super initialLayoutAttributesForAppearingItemAtIndexPath:itemIndexPath];
    if (itemIndexPath.row != 0) {
        CGRect frame = pose.frame;
        frame.origin.y = 1000;
        pose.frame = frame;
    }
    NSLog(@"indexPath=%@, attributes=%@", itemIndexPath, pose);
    return pose;
}

@end
