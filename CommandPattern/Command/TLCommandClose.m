//
//  TLCommandClose.m
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 24/10/17.
//  Copyright © 2017年 Timliu. All rights reserved.
//

#import "TLCommandClose.h"
@implementation TLCommandClose
- (void)executeCommand {
    [self.tv closeTV];
}
@end
