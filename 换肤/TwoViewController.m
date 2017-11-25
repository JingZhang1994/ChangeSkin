//
//  TwoViewController.m
//  换肤
//
//  Created by apple on 2017/11/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "TwoViewController.h"
#import "SkinTool.h"
@interface TwoViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.faceImageView.image = [SkinTool skinToolWithImageName:@"face"];
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

@end
