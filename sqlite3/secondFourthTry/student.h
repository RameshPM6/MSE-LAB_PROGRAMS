//
//  student.h
//  secondFourthTry
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>
@interface student : NSObject{
    sqlite3 *movies;
}
- (void)insert_mydb:(NSString *)query;
- (void)read_mydb:(NSString *)query;
- (void)update_mydb:(NSString *)query;
- (void)delete_mydb:(NSString *)query;
@end
