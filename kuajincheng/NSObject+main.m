//
//  NSObject+main.m
//  3456
//
//  Created by  十三哥 on 2023/2/21.
//
#import "shisangeCD.h"
#import "NSObject+main.h"

@implementation NSObject (main)
+(void)load
{
    [NSObject 调用菜单测试];
}
-(void)调用菜单测试
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [shisangeCD 添加分组:@"888" 功能数:3  子功能:^{
            [shisangeCD 添加开关:@"A1" 排序:0 绑定:^{
                NSLog(@"测试功能1");
            }];
            [shisangeCD 添加开关:@"A1" 排序:1 绑定:^{
                NSLog(@"测试功能1");
            }];
            [shisangeCD 添加开关:@"A1" 排序:2 绑定:^{
                NSLog(@"测试功能1");
            }];
        }];
        [shisangeCD 添加分组:@"你好" 功能数:3  子功能:^{
            [shisangeCD 添加开关:@"A1" 排序:0 绑定:^{
                NSLog(@"测试功能1");
            }];
            [shisangeCD 添加开关:@"A1" 排序:1 绑定:^{
                NSLog(@"测试功能1");
            }];
            [shisangeCD 添加开关:@"A1" 排序:2 绑定:^{
                NSLog(@"测试功能1");
            }];
        }];
    });
    
    
}


@end
