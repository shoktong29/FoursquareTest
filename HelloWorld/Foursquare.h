//
//  Foursquare.h
//  HelloWorld
//
//  Created by martin magalong on 11/28/12.
//  Copyright (c) 2012 ripplewave. All rights reserved.
//

#import "AFHTTPClient.h"

@interface Foursquare : AFHTTPClient


+ (Foursquare *)sharedInstance;
@end
