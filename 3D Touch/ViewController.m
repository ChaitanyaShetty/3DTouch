//
//  ViewController.m
//  3D Touch
//
//  Created by test on 2/28/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
        [self registerForPreviewingWithDelegate:self sourceView:self.imageView];
    }
    else {
        NSLog(@"ForceTouch not available. use LongPress...");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)previewingContext:(id<UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    previewingContext.sourceRect = CGRectMake(0, 0, previewingContext.sourceView.frame.size.width, previewingContext.sourceView.frame.size.height);
    ViewController2 *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"ViewController2"];
    vc.preferredContentSize = CGSizeMake(0, 300);
    return vc;
}


-(void)previewingContext:(id<UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    ViewController2 *vc = (ViewController2 *)viewControllerToCommit;
    vc.closeButton.hidden = NO;
    vc.view.backgroundColor = [UIColor yellowColor];
    [self presentViewController:viewControllerToCommit animated:YES completion:nil];
    
}

@end
