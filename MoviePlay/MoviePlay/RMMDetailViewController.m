//
//  RMMDetailViewController.m
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "RMMDetailViewController.h"
#import <ILMovieDBClient.h>

@interface RMMDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *movieImage;
@property (weak, nonatomic) IBOutlet UITextView *movieDescription;

@end

@implementation RMMDetailViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = self.movie.title;
    __block NSString *imageBackdrop;
    
    [[ILMovieDBClient sharedClient] GET:kILMovieDBMovie parameters:@{@"id":self.movie.id} block:^(id responseObject, NSError *error) {
        
        if (!error) {
            NSDictionary *movieDict = responseObject;
            
//            if (movieDict[@"backdrop_path"] != [NSNull null]){
//                imageBackdrop = [self.imagesBaseUrlString stringByReplacingOccurrencesOfString:@"w92" withString:@"w780"];
//                [self.movieImage setImageWithURL:[NSURL URLWithString:[imageBackdrop stringByAppendingString:self.movieDict[@"backdrop_path"]]]];
//            } else {
//                imageBackdrop = [self.imagesBaseUrlString stringByReplacingOccurrencesOfString:@"w92" withString:@"w500"];
//                [self.movieImage setImageWithURL:[NSURL URLWithString:[imageBackdrop stringByAppendingString:self.movieDict[@"poster_path"]]]];
//            }
        }
    }];
}



@end
