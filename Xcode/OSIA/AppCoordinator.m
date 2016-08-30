//
//  AppCoordinator.m
//  OSIA
//
//  Created by dkhamsing on 8/30/16.
//  Copyright © 2016 dkhamsing. All rights reserved.
//

#import "AppCoordinator.h"

#import "DataViewController.h"
#import "Parser.h"

@interface AppCoordinator ()

@property (nonatomic, strong) UINavigationController *navigationController;

@end

@implementation AppCoordinator

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;
{
    self = [super init];
    if (!self) return nil;
    
    _navigationController = navigationController;
    
    return self;
}

- (void)start;
{
    Parser *parser = [[Parser alloc] init];
    DataViewController *controller = [[DataViewController alloc] init];
    [parser getLatestDataWithCompletion:^(Data *data, NSError *error) {
        controller.data = data;
        if (error)
            NSLog(@"get data error: %@", error);
    }];
    
    [self.navigationController pushViewController:controller animated:NO];
}

@end
