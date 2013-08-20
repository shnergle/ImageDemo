//
//  SHFirstViewController.m
//  ImageDemo
//
//  Created by Adam Hani Schakaki on 19/08/2013.
//  Copyright (c) 2013 Shnergle. All rights reserved.
//

#import "SHFirstViewController.h"
#import "SHAppDelegate.h"
#import "UIImage+Resize.h"

@implementation SHFirstViewController

- (IBAction)takePhoto:(id)sender {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    SHAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.image = info[@"UIImagePickerControllerOriginalImage"];
    [self set:picker];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)set:(id)sender {
    SHAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.quality = [self.qualityField.text integerValue];
    appDelegate.resizedImage = [appDelegate.image resizedImageToFitInSize:CGSizeMake([self.widthField.text integerValue], [self.heightField.text integerValue]) scaleIfSmaller:YES];
    self.imageView.image = appDelegate.resizedImage;
}

- (IBAction)editingDidEnd:(id)sender {
    [sender resignFirstResponder];
}

@end
