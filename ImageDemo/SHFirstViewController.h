//
//  SHFirstViewController.h
//  ImageDemo
//
//  Created by Adam Hani Schakaki on 19/08/2013.
//  Copyright (c) 2013 Shnergle. All rights reserved.
//

@interface SHFirstViewController : UIViewController <UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *heightField;
@property (weak, nonatomic) IBOutlet UITextField *widthField;
@property (weak, nonatomic) IBOutlet UITextField *qualityField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
