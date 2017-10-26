//
//  TLInvoker.m
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 24/10/17.
//  Copyright © 2017年 Timliu. All rights reserved.
//

#import "TLInvoker.h"
#import "TLSuperCommand.h"
@interface TLInvoker ()
@property (nonatomic, strong)NSMutableArray *commandList;// 用来存放命令的列表
@end
@implementation TLInvoker
- (instancetype)init {
    self = [super init];
    if (self) {
        _commandList = [NSMutableArray array];
    }
    return  self;
}
- (void)addCommand:(TLSuperCommand *)command {
    NSLog(@"添加命令");
    [self.commandList addObject:command];
}
- (void)removeCommand:(TLSuperCommand *)command {
    NSLog(@"取消命令");
    if ([self.commandList containsObject:command]) {
       [self.commandList removeObject:command];
    }
}
- (void)notifyCommand {
    NSLog(@"===开始执行命令===");
    for (TLSuperCommand *command in self.commandList) {
        [command executeCommand];
    }
}
@end
