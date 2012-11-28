//
//  ViewController.m
//  HelloWorld
//
//  Created by martin magalong on 11/26/12.
//  Copyright (c) 2012 ripplewave. All rights reserved.
//

#import "ViewController.h"
#import "Foursquare.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDictionary *param = [[NSDictionary alloc]initWithObjectsAndKeys:@"37.33,-122.03",@"ll",
                           @"4bf58dd8d48988d1e0931735",@"categoryId",@"2",@"limit",
                           @"SH13UK04JAJT0RLKT335KODAFRDXJKC4RCEMQZKSIFHZ44ZU",@"oauth_token",@"20120506",@"v",nil];
    [[Foursquare sharedInstance] getPath:@"venues/search" parameters:param success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",[[NSString alloc]initWithData:responseObject encoding:NSASCIIStringEncoding]);
        NSError* error;
        NSPropertyListFormat plistFormat;
//        NSDictionary *temp = [NSPropertyListSerialization propertyListWithData:responseObject options:NSPropertyListImmutable format:&plistFormat error:&error];
//        NSLog(@"%@",temp);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
    }];
}

@end
