//
//  Movie.h
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (strong, nonatomic) NSString *id;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSURL *imageUrl;
@property (strong, nonatomic) NSNumber *popularity;
@property (strong, nonatomic) NSNumber *voteCount;
@property (strong, nonatomic) NSNumber *voteAverage;

@end
