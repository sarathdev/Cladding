//
//  flatDetailViewController.h
//  Cladding
//
//  Created by SpurTree on 05/05/15.
//  Copyright (c) 2015 SpurTree. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface flatDetailViewController : UIViewController<UIScrollViewDelegate>
{
    CGFloat MINIMUM_SCALE;
    CGFloat MAXIMUM_SCALE;
    
    UIImage *image;
    UIImageView *img;
    UIPinchGestureRecognizer *twoFingerPinch;



}


@property NSString* productName;
@property NSString* flatimg;
@property NSString* desc;

- (IBAction)coloredChangeseg:(id)sender;

//

@property (strong, nonatomic) IBOutlet UILabel *productnamelabel;
@property (strong, nonatomic) IBOutlet UIImageView *flatimage;
@property (strong, nonatomic) IBOutlet UILabel *descritpion;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@end
