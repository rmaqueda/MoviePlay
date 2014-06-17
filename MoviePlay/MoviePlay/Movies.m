//
//  Movies.m
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Movies.h"
#import <ILMovieDBClient.h>

#define API_KEY @"6715aa0c0af7c0b48311ac4a32c57c9a"

@implementation Movies


-(void)popularMovies {
    
    [ILMovieDBClient sharedClient].apiKey = API_KEY;
    [[ILMovieDBClient sharedClient] GET:kILMovieDBMovieTopRated parameters:nil block:^(id responseObject, NSError *error) {
        if (!error) {
            NSLog(@"%@", responseObject);
            
            
            
            
        }
    }];
    
    
}

@end
