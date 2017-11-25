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

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
     self.faceImageView.image = [SkinTool skinToolWithImageName:@"face"];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    //不要把换肤的代码放到viewDidLoad里面，因为控制器是懒加载的，一旦加载上就不会重新加载，所以viewDidLoad只会走一次，在切换了皮肤，后面的页面并不会变化所以要放在viewWillAppear，因为每次都会加载，假如这个控制器是push进来的那放在viewDidLoad也可以实现换肤效果，因为push进来的控制器在pop回去的时候回自动销毁，这样每次进来都是重新加载的，都会走viewDidLoad
    //self.faceImageView.image = [SkinTool skinToolWithImageName:@"face"];
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
