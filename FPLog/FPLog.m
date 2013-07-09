//
//  FPLog.m
//
//  FPLinearLayout is a view container that automatically handles children
//  positions for you in a linear fashion.
//
//  Created by FingertiP on 7/3/13.
//  Copyright (c) 2013, FingertiP. All rights reserved.
//
//  http://www.fingertip.in.th
//
/*
  Copyright (c) 2013, FingertiP

  All rights reserved.

  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright
  notice, this list of conditions and the following disclaimer.

  * Redistributions in binary form must reproduce the above copyright
  notice, this list of conditions and the following disclaimer in the
  documentation and/or other materials provided with the distribution.

  * Neither the name of FingertiP nor the names of its
  contributors may be used to endorse or promote products derived from
  this software without specific prior written permission.

  THIS SOFTWARE IS PROVIDED BY FINGERTIP AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
  LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
  NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
  SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

#import "FPLog.h"

@implementation FPLog

+ (void)viewFrame:(UIView *)object {
  NSString* title = [NSString stringWithFormat:@"======= Frame of %@", object];
  [self viewFrame:object withTitle:title];
}

+ (void)viewFrame:(UIView *)object withTitle:(NSString *)title {
  [self frame:object.frame withTitle:title];
}

+ (void)viewSize:(UIView *)object {
  [self size:object.frame.size];
}

+ (void)viewSize:(UIView *)object withTitle:(NSString *)title {
  [self size:object.frame.size withTitle:title];
}

+ (void)frame:(CGRect)frame {
  [self frame:frame withTitle:@"======= FRAME"];
}
+ (void)frame:(CGRect)frame withTitle:(NSString *)title {
  NSMutableString* log = [NSMutableString stringWithFormat:@"\n%@\n", title];
  [log appendFormat:@" X: %f\n", frame.origin.x];
  [log appendFormat:@" Y: %f\n", frame.origin.y];
  [log appendFormat:@" WIDTH: %f\n", frame.size.width];
  [log appendFormat:@" HEIGHT: %f\n", frame.size.height];
  [log appendFormat:@"================="];
  NSLog(@"%@", log);
}

+ (void)size:(CGSize)size {
  [self size:size withTitle:@"======= SIZE"];
}

+ (void)size:(CGSize)size withTitle:(NSString *)title {
  NSMutableString* log = [NSMutableString stringWithFormat:@"\n%@\n", title];
  [log appendFormat:@" WIDTH: %f\n", size.width];
  [log appendFormat:@" HEIGHT: %f\n", size.height];
  [log appendFormat:@"================="];
  NSLog(@"%@", log);
}

+ (void)point:(CGPoint)point {
  [self point:point withTitle:@"======= POINT"];
}

+ (void)point:(CGPoint)point withTitle:(NSString *)title {
  NSMutableString* log = [NSMutableString stringWithFormat:@"\n%@\n", title];
  [log appendFormat:@" X: %f\n", point.x];
  [log appendFormat:@" Y: %f\n", point.y];
  [log appendFormat:@"================="];
  NSLog(@"%@", log);
}

@end
