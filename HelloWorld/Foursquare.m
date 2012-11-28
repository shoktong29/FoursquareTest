//
//  Foursquare.m
//  HelloWorld
//
//  Created by martin magalong on 11/28/12.
//  Copyright (c) 2012 ripplewave. All rights reserved.
//

#import "Foursquare.h"

@implementation Foursquare

static NSString *const baseUrl = @"https://api.Foursquare.com/v2/";

+ (Foursquare *)sharedInstance{
    static Foursquare *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[Foursquare alloc] initWithBaseURL:[NSURL URLWithString:baseUrl]];
    });
    return _sharedInstance;
}

- (id)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
@end
