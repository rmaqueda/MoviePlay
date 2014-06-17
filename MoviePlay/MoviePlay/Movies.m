//
//  Movies.m
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Movies.h"
#import "Movie.h"
#import <ILMovieDBClient.h>

#define API_KEY @"6715aa0c0af7c0b48311ac4a32c57c9a"

@interface Movies ()
@property (nonatomic, strong) NSString *imagesBaseUrlString;
@end

@implementation Movies

-(void)downloadPopularMovies {
    
    [ILMovieDBClient sharedClient].apiKey = API_KEY;
    
    [[ILMovieDBClient sharedClient] GET:kILMovieDBConfiguration parameters:nil block:^(id responseObject, NSError *error) {
        self.imagesBaseUrlString = [NSString stringWithFormat:@"%@", [responseObject[@"images"][@"base_url"] stringByAppendingString:@"w92"]];

        [[ILMovieDBClient sharedClient] GET:kILMovieDBMovieTopRated parameters:nil block:^(id responseObject, NSError *error) {
            if (!error) {
                NSArray *response =responseObject[@"results"];
                NSMutableArray *allMovies = [[NSMutableArray alloc] init];
                
                for (NSDictionary *rawMovie in response) {
                    Movie *aMovie = [[Movie alloc] init];
                    aMovie.id = rawMovie[@"id"];
                    aMovie.title = rawMovie[@"title"];
                    aMovie.imageUrl = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@", self.imagesBaseUrlString, rawMovie[@"poster_path"]]];
                    aMovie.popularity = rawMovie[@"popularity"];
                    aMovie.voteAverage = rawMovie[@"vote_average"];
                    aMovie.voteCount = rawMovie[@"vote_count"];
                    [allMovies addObject:aMovie];
                }
                [self.deletegate finishDownloadPopularMovies:allMovies];
            }
        }];
    }];
}




@end
