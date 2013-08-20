//
//  SHSecondViewController.m
//  ImageDemo
//
//  Created by Adam Hani Schakaki on 19/08/2013.
//  Copyright (c) 2013 Shnergle. All rights reserved.
//

#import "SHSecondViewController.h"
#import "SHAppDelegate.h"
#import "UIImage+WebP.h"

@implementation SHSecondViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    SHAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    NSData *image;
    switch (self.index) {
        case 1:
            image = UIImageJPEGRepresentation(appDelegate.resizedImage, appDelegate.quality);
            self.imageView.image = [UIImage imageWithData:image];
            break;
        case 2:
            image = UIImagePNGRepresentation(appDelegate.resizedImage);
            self.imageView.image = [UIImage imageWithData:image];
            break;
        case 3:
            image = [appDelegate.resizedImage dataWebPLossless];
            self.imageView.image = [UIImage imageWithWebPData:image];
            break;
        case 4:
            image = [appDelegate.resizedImage dataWebPWithQuality:appDelegate.quality];
            self.imageView.image = [UIImage imageWithWebPData:image];
    }
    self.sizeLabel.text = [NSString stringWithFormat:@"%d kB", [image length] / 1024];
}

@end
