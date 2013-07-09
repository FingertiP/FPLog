FPLog
============

FPLog is a simple logger that help you trace the value of CGRect, CGSize and CGPoint. This reduces your pain when you want to inspect uiview's frame.


### Usage Example
```objective-c
UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];

// Trace UIView frame.
[FPLog viewFrame:label];

// Trace UIView frame with title.
[FPLog viewFrame:label withTitle:@"=== Frame of label ==="];

// Other methods.
[FPLog viewSize:label];
[FPLog frame:label.frame];
[FPLog size:label.frame.size];
[FPLog point:CGPointMake(0, 0)];