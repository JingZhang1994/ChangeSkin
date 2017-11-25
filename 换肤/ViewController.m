//
//  ViewController.m
//  换肤
//
//  Created by apple on 2017/11/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SkinTool.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *faceImageView;
@property (weak, nonatomic) IBOutlet UIImageView *heartImageView;
@property (weak, nonatomic) IBOutlet UIImageView *rectImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置皮肤
    [self changeSkin];
}
#pragma mark 切换图片的事件
- (IBAction)switchToBlueSkin:(UIButton *)sender {
    [SkinTool setSkinColor:@"blue"];
    [self changeSkin];
}
- (IBAction)switchToRedSkin:(UIButton *)sender {
    [SkinTool setSkinColor:@"red"];
    [self changeSkin];
}
- (IBAction)switchToGreenSkin:(UIButton *)sender {
    [SkinTool setSkinColor:@"green"];
    [self changeSkin];
}
-(void)changeSkin{
    //imageNamed 加载的是NSBundle下的图片,bundle下直接跟文件的路径
    self.faceImageView.image = [SkinTool skinToolWithImageName:@"face"];
    self.heartImageView.image = [SkinTool skinToolWithImageName:@"heart"];
    self.rectImageView.image = [SkinTool skinToolWithImageName:@"rect"];
}
@end
