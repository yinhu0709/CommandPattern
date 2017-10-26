//
//  TLSuperCommand.h
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 23/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TLTV.h"
// 抽象命令类
@interface TLSuperCommand : NSObject
@property (nonatomic, strong)TLTV *tv;
- (void)executeCommand;
@end
