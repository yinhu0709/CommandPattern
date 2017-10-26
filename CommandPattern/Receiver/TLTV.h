//
//  TLTV.h
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 23/10/17.
//  Copyright © 2017年 Timliu. All rights reserved.
//

#import <Foundation/Foundation.h>
// 命令的接受者
@interface TLTV : NSObject
- (void)openTV;
- (void)closeTV;
- (void)changeTV;
@end
