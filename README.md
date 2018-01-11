# FRTabBarController
自定义TabBarViewController，使用方法和系统设置TabBarController方法一致，支持把tabbarItem直接设置为图片（利用button实现）

# CocoaPods
```Objective-C
pod 'FRTabBarController'
```
# 使用方法
添加子控制器
```Objective-C
/**
*  为tabBarController添加子控制器UIViewController
*
*  @param childViewController 子控制器
*  @param title           子控制器标题
*  @param image           子控制器tabBarItem图片
*  @param selectedImage   子控制器tabBarItem选中图片
*/
- (void)addChildViewController:(UIViewController *)childViewController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage;

/**
*  为tabBarController添加子控制器UINavigationController
*
*  @param navigationController 导航控制器
*  @param title                navigationController的rootViewController的title
*  @param image                navigationController的rootViewController的image
*  @param selectedImage        navigationController的rootViewController的selectedImage
*/
- (void)addChildNavigationController:(UINavigationController *)navigationController title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage;
```
设置tabBarItem的颜色
```Objective-C
/**
*  设置tabBarItem的颜色，可选择实现该方法，不设置则根据图片颜色设置文字颜色
*
*  @param normalColor   普通状态Item的颜色
*  @param selectedColor 选中状态Item的颜色
*/
- (void)setTabBarItemNormalColor:(UIColor *)normalColor selectedColor:(UIColor *)selectedColor;
```
### 特殊处理
代码修改选中的控制器可以通过调用下面方法实现
```Objective-C
/**
设置默认选中控制器序号

@param selectedIndex 选中控制器序号
*/
- (void)selectedControllerWithIndex:(NSUInteger)selectedIndex;
```
另外，有些控制器页面展示需要用户登录等其他条件才能进入的时候，可以通过继承FRTabBarController创建对应的子控制器，并在控制器里重写方法
```Objective-C
- (BOOL)tabBarItemCanSelectedBarItem:(NSInteger)integer {
return YES;
}
```
根据控制器的对应integer作出判断是否切换到对应的控制器

