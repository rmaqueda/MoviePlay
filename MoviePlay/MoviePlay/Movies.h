//
//  Movies.h
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol APINetworkDeletegate <NSObject>

-(void)finishDownloadPopularMovies:(NSArray *)movies;;

@end



@interface Movies : NSObject

@property (nonatomic, strong) NSArray *movies;
@property (nonatomic, weak) id<APINetworkDeletegate> deletegate;

-(void)downloadPopularMovies;

@end
