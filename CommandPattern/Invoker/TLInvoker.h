//
//  TLInvoker.h
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 24/10/17.
//  Copyright © 2017年 Timliu. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TLSuperCommand;
@interface TLInvoker : NSObject
- (void)addCommand:(TLSuperCommand *)command;
- (void)removeCommand:(TLSuperCommand *)command;
- (void)notifyCommand;
@end
