//
//  flatDetailViewController.m
//  Cladding
//
//  Created by SpurTree on 05/05/15.
//  Copyright (c) 2015 SpurTree. All rights reserved.
//

#import "flatDetailViewController.h"

@interface flatDetailViewController ()



//swipe gesture

-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer;

@end

@implementation flatDetailViewController

- (void)viewDidLoad {
    
    _scrollView.scrollEnabled = NO;

    [super viewDidLoad];
    _productnamelabel.text = _productName;
   // _flatimage.image = [UIImage imageNamed:_flatimg];
    _descritpion.text = _desc;
    // Do any additional setup after loading the view.
    
    
    UISwipeGestureRecognizer *swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToRightWithGestureRecognizer:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    
    
    UISwipeGestureRecognizer *swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(slideToLeftWithGestureRecognizer:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [self.view addGestureRecognizer:swipeRight];
    [self.view addGestureRecognizer:swipeLeft];
    
    

    

    //
    self.flatimage.image =[UIImage imageNamed:_flatimg];
    [self.flatimage sizeToFit];
    
    self.scrollView.contentSize = image.size;
    self.scrollView.delegate = self;
    self.scrollView.maximumZoomScale = 100.0;
    self.scrollView.minimumZoomScale = 1.0;
    

}


-(void)slideToLeftWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer
{
    
    
    _descritpion.textColor= [UIColor grayColor];
    
    
}
-(void)slideToRightWithGestureRecognizer:(UISwipeGestureRecognizer *)gestureRecognizer
{
    
    _descritpion.textColor=[UIColor blueColor];
    
}

- (void)twoFingerPinch:(UIPinchGestureRecognizer *)recognizer
{
    //    NSLog(@"Pinch scale: %f", recognizer.scale);
    if (recognizer.scale >1.0f && recognizer.scale < 2.5f) {
        CGAffineTransform transform = CGAffineTransformMakeScale(recognizer.scale, recognizer.scale);
        img.transform = transform;
    }
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CGPoint centerPoint = CGPointMake(CGRectGetMidX(self.scrollView.bounds),
                                      CGRectGetMidY(self.scrollView.bounds));
    [self.flatimage setCenter:centerPoint];
}
// MARK: - UIScrollViewDelegate
- (UIView*)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return  self.flatimage;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//

- (void)pinch:(UIPinchGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateEnded
        || gesture.state == UIGestureRecognizerStateChanged) {
       
        NSLog(@"gesture.scale = %f", gesture.scale);;
        gesture.scale = 1;
    }
}



//
- (IBAction)coloredChangeseg:(id)sender {
    
    UISegmentedControl *segmentedControl = (UISegmentedControl *) sender;
    NSInteger selectedSegment = segmentedControl.selectedSegmentIndex;
    if (selectedSegment == 0) {
        _descritpion.textColor = [UIColor redColor];
    }
    if (selectedSegment == 1) {
        _descritpion.textColor = [UIColor orangeColor];
        
    }
    if (selectedSegment == 2) {
        _descritpion.textColor = [UIColor greenColor];
        
    }
    if (selectedSegment ==3) {
        
        [self performSegueWithIdentifier:@"gallery" sender:self];
        
        
    }
    
    
}
@end
