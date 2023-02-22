//
//  NSObject+main.m
//  3456
//
//  Created by  十三哥 on 2023/2/21.
//
#import <UIKit/UIKit.h>
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
        [shisangeCD 添加开关:@"这是一个单独开关例子" 开启:^{
            NSLog(@"单独1开关开启");
        } 关闭:^{
            NSLog(@"单独1开关关闭");
        }];
        [shisangeCD 添加开关:@"这是一个单独开关例子2" 开启:^{
            NSLog(@"单独2开关开启");
        } 关闭:^{
            NSLog(@"单独2开关关闭");
        }];
        [shisangeCD 添加分组:@"这是一个分组" 是否展开:NO 功能数:4  子功能:^{
            //创建一个自定义视图 例子===================================
            UIView *a=[[UIView alloc] initWithFrame:CGRectMake(30, 0, 100, 40)];//这个尺寸为在单元格中的坐标系
            a.backgroundColor=[UIColor redColor];//随便设置个背景红色
            //视图绑定点击事件 便于点击操作
            UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] init];
            tap2.numberOfTapsRequired = 1;//点击次数
            tap2.numberOfTouchesRequired = 1;//手指数
            [tap2 addTarget:self action:@selector(菜单)];
            [a addGestureRecognizer:tap2];
            //视图添加到菜单
            [shisangeCD 添加自定义视图:(a)];
            
            
            
            //添加一个开关 包含开启和关闭调用 例子===================================
            [shisangeCD 添加开关:@"这是一个开关例子" 开启:^{
                NSLog(@"测试功能2开启");
            } 关闭:^{
                NSLog(@"测试功能2关闭");
            }];
            
            
            //添加一个按钮 传送的是按钮在表格单元格的坐标系 例子===================================
            CGRect A=CGRectMake(20, 0, 50, 20);
            [shisangeCD 添加按钮:@"这是一个按钮例子" 点击操作:^{
                NSLog(@"点击了按钮3");
            } 尺寸:(A)];
            
            
            
            //添加一个选项卡 例子===================================
            NSArray *array = [NSArray arrayWithObjects:@"选项卡例子",@"奶子",@"屁股", nil];
            UISegmentedControl *segment = [[UISegmentedControl alloc]initWithItems:array];
            segment.frame = CGRectMake(20,5,280,30);
            segment.selectedSegmentIndex = 1;
            segment.apportionsSegmentWidthsByContent = YES;
            [segment addTarget:self action:@selector(选项卡调用:) forControlEvents:UIControlEventValueChanged];
            //选项卡添加到菜单
            [shisangeCD 添加自定义视图:segment];
            
        }];
        //第二个分组一样
        
        [shisangeCD 添加分组:@"这是第二分组" 是否展开:NO 功能数:3  子功能:^{
            [shisangeCD 添加开关:@"20" 开启:^{
                NSLog(@"测试功能20开启");
            } 关闭:^{
                NSLog(@"测试功能20关闭");
            }];
            [shisangeCD 添加开关:@"21" 开启:^{
                NSLog(@"测试功能21开启");
            } 关闭:^{
                NSLog(@"测试功能21关闭");
            }];
            [shisangeCD 添加开关:@"23" 开启:^{
                NSLog(@"测试功能23开启");
            } 关闭:^{
                NSLog(@"测试功能23关闭");
            }];
        }];
        
    });
    
    
}
-(void)菜单
{
    NSLog(@"视图被点击了");
}
-(void)选项卡调用:(UISegmentedControl*)sender
{
    if (sender.selectedSegmentIndex == 0) {
        NSLog(@"点击了第一个选项卡");
    }else if(sender.selectedSegmentIndex == 1){
        NSLog(@"点击了第2个选项卡");
    }else if(sender.selectedSegmentIndex == 2){
        NSLog(@"点击了第3个选项卡");
    }
    
}
@end
