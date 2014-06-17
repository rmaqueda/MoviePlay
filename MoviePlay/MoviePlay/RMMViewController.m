//
//  RMMViewController.m
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "RMMViewController.h"
#import "Movies.h"
#import "RMMTableViewController.h"

@interface RMMViewController () <APINetworkDeletegate>
@property (nonatomic, strong) Movies *movies;
@end

@implementation RMMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.movies = [[Movies alloc] init];
    self.movies.deletegate = self;
}

- (IBAction)downloadPopularMovies:(id)sender {
     [self.movies downloadPopularMovies];
}

#pragma mark - APINetworkDelegate
-(void)finishDownloadPopularMovies:(NSArray *)movies {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle: nil];
    RMMTableViewController *tableVC = (RMMTableViewController *)[storyboard instantiateViewControllerWithIdentifier:@"RMMTableViewController"];
    tableVC.movies = movies;
    [self presentViewController:tableVC animated:YES completion:nil];
}

@end
