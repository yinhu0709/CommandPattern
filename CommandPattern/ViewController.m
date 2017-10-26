//
//  ViewController.m
//  CommandPattern
//
//  Created by Tim (Xinyin) Liu on 23/10/17.
//  Copyright © 2017年 nextlabs. All rights reserved.
//

#import "ViewController.h"
#import "TLInvoker.h"
#import "TLTV.h"
#import "TLCommandOpen.h"
#import "TLCommandClose.h"
#import "TLCommandChange.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 命令接受者
    TLTV *tv = [[TLTV alloc]init];
    // 创建调用者
    TLInvoker *invoker = [[TLInvoker alloc]init];
    // 创建命令对象，并设定他的接受对象
    TLSuperCommand *openCommand = [[TLCommandOpen alloc]init];
    openCommand.tv = tv;
    [invoker addCommand:openCommand];
    
    TLSuperCommand *closeCommand = [[TLCommandClose alloc]init];
    closeCommand.tv = tv;
    [invoker addCommand:closeCommand];
    
    TLSuperCommand *changeCommand = [[TLCommandChange alloc]init];
    changeCommand.tv = tv;
    [invoker addCommand:changeCommand];
    // 执行命令
    [invoker notifyCommand];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
