//
//  Movies.h
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movies : NSObject

@property (assign, nonatomic) BOOL adult;
//@property (strong, nonatomic) NSString *backdrop_path;
//@property (strong, nonatomic) NSNull *belongs_to_collection;
//@property (strong, nonatomic) NSDecimalNumber *budget;
@property (strong, nonatomic) NSArray *genres;
//@property (strong, nonatomic) NSString *homepage;
@property (strong, nonatomic) NSDecimalNumber *id;
@property (strong, nonatomic) NSString *imdb_id;
@property (strong, nonatomic) NSString *original_title;
@property (strong, nonatomic) NSString *overview;
@property (strong, nonatomic) NSDecimalNumber *popularity;
@property (strong, nonatomic) NSString *poster_path;
//@property (strong, nonatomic) NSArray *production_companies;
//@property (strong, nonatomic) NSArray *production_countries;
//@property (strong, nonatomic) NSString *release_date;
//@property (strong, nonatomic) NSDecimalNumber *revenue;
//@property (strong, nonatomic) NSDecimalNumber *runtime;
//@property (strong, nonatomic) NSArray *spoken_languages;
//@property (strong, nonatomic) NSString *status;
//@property (strong, nonatomic) NSString *tagline;
@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSDecimalNumber *vote_average;
@property (strong, nonatomic) NSDecimalNumber *vote_count;


-(void)popularMovies;

@end
