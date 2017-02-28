//
//  ViewController2.h
//  3D Touch
//
//  Created by test on 2/28/17.
//  Copyright © 2017 com.meheboob. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController2 : UIViewController
@property (strong, nonatomic) IBOutlet UIButton *closeButton;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)close:(id)sender;

@end
