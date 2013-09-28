//
//  studentViewController.m
//  secondFourthTry
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "studentViewController.h"
#import "student.h"
@interface studentViewController ()

@end

@implementation studentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //NSLog(@"error 1");
    student * s = [[student alloc] init];
    //NSLog(@"error 2");
    NSLog(@"Initial table");
    NSLog(@"----------------------------");
    [s read_mydb:@"select * from english_movies;"];
    [s insert_mydb:@"insert into english_movies values(4, \"DARK KNIGHT\", \"LEDGER\");"];
    NSLog(@"after query insert into english_movies values(4, \"DARK KNIGHT\", \"LEDGER\");");
    NSLog(@"----------------------------");
    [s read_mydb:@"select * from english_movies;"];
    [s delete_mydb:@"delete from english_movies where movie_id=4;"];
    NSLog(@"after query delete from english_movies where movie_id=4;");
    NSLog(@"----------------------------");

    [s read_mydb:@"select * from english_movies"];
    [s update_mydb:@"update english_movies set lead_actor=\"MORGAN FREEMAN\" where movie_id=3;"];
    NSLog(@"after query update english_movies set lead_actor=\"MORGAN FREEMAN\" where movie_id=3;");
    NSLog(@"----------------------------");

    [s read_mydb:@"select * from english_movies;"];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
