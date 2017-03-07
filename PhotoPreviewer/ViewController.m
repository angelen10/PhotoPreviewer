//
//  ViewController.m
//  PhotoPreviewer
//
//  Created by angelen on 2017/3/7.
//  Copyright © 2017年 ANGELEN. All rights reserved.
//

#import "ViewController.h"
#import "CYPhotoPreviewer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *profilePhoto;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.profilePhoto.userInteractionEnabled = YES;
    [self.profilePhoto addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(displayLargePhoto)]];
}


- (void)displayLargePhoto {
    CYPhotoPreviewer *previewer = [[CYPhotoPreviewer alloc] init];
    [previewer previewFromImageView:self.profilePhoto inContainer:self.view];
}


@end
