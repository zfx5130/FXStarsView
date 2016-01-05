# FXStarsView

###效果如下
![](https://github.com/zfx5130/FXStarsView/blob/master/Images/demo1.gif)
![](https://github.com/zfx5130/FXStarsView/blob/master/Images/demo2.gif)

##安装
###1.CocoaPods

```
  1.在 Podfile 中添加 pod "FXStarsView"。
  2.执行 pod install 或 pod update。
  3.导入 <FXStarsView.h>。

```
###2.手动安装

```
  1.下载FXStarsView文件夹内的所有内容。
  2.将FXStarsView内的源文件添加(拖放)到你的工程。
  3.导入FXStarsView.h。

```


## 使用方式

```
	#import "FXStarsView.h"

	YBStarsView starsView =
	[[YMStarsView alloc] initWithFrame:self.view.bounds];
	self.starsView.delegate = self;
	self.starsView.dateSource = self;
	[self.view addSubview:self.starsView];
	[self.starsView showStars];

```

####Delegate方法

```
/**
 *  the stars will be Around the rect nearby, if you set the center rect, the arcrandom star will be arcrandom round the center rect near. if you not set, default is the view center,UIEdgeInsets(10, 10, 10, 10).
 *
 *  @param starsView
 *
 *  @return the center rect
 */
- (CGRect)centerRectForStarsView:(YMStarsView *)starsView;

/**
 *  the stars padding ,the stars will be set near +/- padding with the center rect circle,
    default is +/- 20.0f.Horizontal
 *
 *  @param starsView
 *
 *  @return the centerX padding
 */
- (CGFloat)horizontalPaddingForStarsView:(YMStarsView *)starsView;

/**
 *  the stars padding y ,the stars will be set near +/- padding with the center rect,Vertical
 *
 *  @param starsView starsView
 *
 *  @return the centerY padding
 */
- (CGFloat)verticalPaddingForStarsView:(YMStarsView *)starsView;

```

####DateSource

```
/**
 *  will return the default value if unset, the default stars radius is 4.0f,
 *  if set array, will be arcrandom set radius with the array element.
 *
 *  @param starsView
 *
 *  @return radiues
 */
- (NSArray<NSNumber *> *)starRadiusesForStarsView:(YMStarsView *)starsView;

/**
 *  will return the default value if unset, default stars count is 20.
 *
 *  @param starsView starsView
 *
 *  @return star count
 */
- (NSUInteger)starCountForStarsView:(YMStarsView *)starsView;

```
