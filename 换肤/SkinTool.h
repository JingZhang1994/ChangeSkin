//
//  SkinTool.h
//  换肤
//
//  Created by apple on 2017/11/24.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SkinTool : NSObject
+(UIImage *)skinToolWithImageName:(NSString *)imageName;
+(void)setSkinColor:(NSString *)skincolor;
@end
