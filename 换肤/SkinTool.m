//
//  SkinTool.m
//  换肤
//
//  Created by apple on 2017/11/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "SkinTool.h"



@implementation SkinTool

//静态属性
static NSString *_skinColor;

//给他一个默认值
+(void)initialize{
        //1.取出偏好设置中，记录的皮肤颜色
        _skinColor = [[NSUserDefaults standardUserDefaults]objectForKey:@"skinColor"];
        //2.如果偏好设置中没有记录颜色，则显示默认颜色
        if (_skinColor == nil) {
            _skinColor = @"blue";
        }
}

+(UIImage *)skinToolWithImageName:(NSString *)imageName{
    //1.拼接imageName前面的路径
    NSString *imageNamePath = [NSString stringWithFormat:@"skin/%@/%@",_skinColor,imageName];
    //2.创建对应的UIImage 对象
    return [UIImage imageNamed:imageNamePath];
}
+(void)setSkinColor:(NSString *)skincolor{
    _skinColor = skincolor;
    //记录用户选中的皮肤
    [[NSUserDefaults standardUserDefaults]setObject:skincolor forKey:@"skinColor"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}
@end
