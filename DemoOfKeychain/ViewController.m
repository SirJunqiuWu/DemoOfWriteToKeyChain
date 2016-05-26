//
//  ViewController.m
//  DemoOfKeychain
//
//  Created by 吴 吴 on 16/5/26.
//  Copyright © 2016年 JackWu. All rights reserved.
//

#import "ViewController.h"
#import "WJQKeyChain.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)init {
    self = [super init];
    if (self) {
        self.title = @"钥匙串存储数据";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dic = [WJQKeyChain load:@"testData"];
    if (dic)
    {
        self.title = [dic objectForKey:@"title"];
    }
    else
    {
        NSDictionary *parma = @{@"title":@"测试数据"};
        [WJQKeyChain save:@"testData" data:parma];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
