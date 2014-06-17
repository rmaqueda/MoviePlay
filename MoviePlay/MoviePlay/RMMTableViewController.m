//
//  RMMTableViewController.m
//  MoviePlay
//
//  Created by Ricardo Maqueda on 17/06/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//
#import <UIImageView+AFNetworking.h>
#import "RMMTableViewController.h"
#import "Movie.h"
#import "RMMDetailViewController.h"


@interface RMMTableViewController ()

@end

@implementation RMMTableViewController


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return [self.movies count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MovieCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }

    Movie *movie = [self.movies objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor colorWithRed:0.0 green:122.0/255.0 blue:1.0 alpha:1.0];
    cell.textLabel.text = movie.title;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"popularity: %@", movie.popularity];
    cell.imageView.contentMode = UIViewContentModeScaleAspectFill;
    if (movie.imageUrl) {
        [cell.imageView setImageWithURL:movie.imageUrl];
    }
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    RMMDetailViewController *movieDetailViewController = (RMMDetailViewController *)[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"RMMDetailViewController"];
    movieDetailViewController.movie = [self.movies objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:movieDetailViewController animated:YES];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    
    
}


@end
