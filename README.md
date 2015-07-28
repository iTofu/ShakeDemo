## ShakeDemo
摇一摇示例代码。

![image](https://github.com/LeoiOS/ShakeDemo/blob/master/demo.png)

## 前言 Foreword
iPhone上的摇一摇实现很简单。具体参考下面的代码或者下载Demo试一下。


## 代码 Code

![image](https://github.com/LeoiOS/ShakeDemo/blob/master/tipImage.png)

* 在需要响应摇一摇的controller中，设置`canBecomeFirstResponder`：
	```objc
	- (BOOL)canBecomeFirstResponder {
    	
    	return YES;
	}
	```
* 直接实现下面的代理方法即可：
	```objc
	#pragma mark - 摇动
	
	/**
	 *  摇动开始
	 */
	- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	    
	    if (motion == UIEventSubtypeMotionShake) {
	        
	        NSLog(@"开始摇了");
	    }
	}
	
	/**
	 *  摇动结束
	 */
	- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	    
	    NSLog(@"摇动结束");
	}
	
	/**
	 *  摇动取消
	 */
	- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
	    
	    NSLog(@"摇动取消");
	}
	```


## 联系 Support
* 发现问题请lssues我，谢谢:)
* Email:leoios@sina.com
* Blog: http://www.leodong.com


## 授权 License
本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。
