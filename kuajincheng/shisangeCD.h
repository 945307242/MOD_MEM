
//  WX:NongShiFu123
//  QQ:350722326
//  Created by  十三哥 on 2023/2/21.
//


NS_ASSUME_NONNULL_BEGIN
typedef void (^子功能)(void);
typedef void (^执行函数)(void);
@interface shisangeCD : NSObject
+ (void)添加分组:(NSString *)标题 功能数:(int)功能数 子功能:(子功能)子功能;
+ (void)添加开关:(NSString *)标题 排序:(int)排序 绑定:(执行函数)绑定;
@end

NS_ASSUME_NONNULL_END
