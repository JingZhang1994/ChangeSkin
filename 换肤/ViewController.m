//
//  ViewController.m
//  换肤
//
//  Created by apple on 2017/11/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.取出偏好设置中，记录的皮肤颜色
    NSString *skinColor = [[NSUserDefaults standardUserDefaults]objectForKey:@"skinColor"];
    //2.如果偏好设置中没有记录颜色，则显示默认颜色
    if (skinColor == nil) {
        skinColor = @"blue";
    }
    //3.设置皮肤
    [self changeSkinWithColor:skinColor];
}
#pragma mark 切换图片的事件
- (IBAction)switchToBlueSkin:(UIButton *)sender {
    [self changeSkinWithColor:@"blue"];
}
- (IBAction)switchToRedSkin:(UIButton *)sender {

    [self changeSkinWithColor:@"red"];

}
- (IBAction)switchToGreenSkin:(UIButton *)sender {
    [self changeSkinWithColor:@"green"];

}
-(void)changeSkinWithColor:(NSString *)skinColor{
    //1.拼接图片名称，设置对应皮肤的图片
    NSString *faceImageName = [NSString stringWithFormat:@"%@face",skinColor];
    self.faceImageView.image = [UIImage imageNamed:faceImageName];
     NSString *heartImageName = [NSString stringWithFormat:@"%@heart",skinColor];
    self.heartImageView.image = [UIImage imageNamed:heartImageName];
     NSString *rectImageName = [NSString stringWithFormat:@"%@rect",skinColor];
    self.rectImageView.image = [UIImage imageNamed:rectImageName];
    //2.记录用户选中的皮肤
    [[NSUserDefaults standardUserDefaults]setObject:skinColor forKey:@"skinColor"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
@end
