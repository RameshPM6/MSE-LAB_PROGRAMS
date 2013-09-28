//
//  student.m
//  secondFourthTry
//
//  Created by MSE on 27/09/13.
//  Copyright (c) 2013 MSE. All rights reserved.
//

#import "student.h"

@implementation student


-(void) insert_mydb:(NSString *)query{
    
    NSString *dbPath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"sqlite3"];
    
    if(sqlite3_open([dbPath UTF8String], &movies) == SQLITE_OK){
        const char* query_stat = [query UTF8String];
        sqlite3_stmt *ppStmt;
        if(sqlite3_prepare_v2(movies, query_stat, -1, &ppStmt, NULL) == SQLITE_OK){
            if(sqlite3_step(ppStmt) == SQLITE_OK){
                sqlite3_finalize(ppStmt);
                NSLog(@"VALUES INSERTED, YAY!");
            }
            else{
                //NSLog(@"FAILED TO EXECUTE QUERY. SORRY!");
                //NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
            }
        }
        else{
            NSLog(@"FAILED TO PREPARE STATEMENT, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);            
        }
    }
    else{
        NSLog(@"FAILED TO OPEN DATABASE, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
    } sqlite3_close(movies);
    // NSLog(@"insert %@",query);
}

-(void) read_mydb:(NSString *)query{
   
    NSString *dbPath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"sqlite3"];
    if(sqlite3_open([dbPath UTF8String], &movies) == SQLITE_OK){
        const char* query_stat = [query UTF8String];
        sqlite3_stmt *ppStmt;

        if(sqlite3_prepare_v2(movies, query_stat, -1, &ppStmt, NULL) == SQLITE_OK){
            NSLog(@"Movie ID|MovieName|LeadActor");
            while(sqlite3_step(ppStmt) == SQLITE_ROW){
                NSString * movie_id = [[NSString alloc] initWithUTF8String:(char *)sqlite3_column_text(ppStmt, 0)];
                NSString * movie_name = [[NSString alloc] initWithUTF8String:(char*)sqlite3_column_text(ppStmt, 1)];
                
                NSString * lead_actor = [[NSString alloc] initWithUTF8String:(char*)sqlite3_column_text(ppStmt, 2)];
                NSLog(@"%@|%@|%@",movie_id, movie_name, lead_actor);
                
            }
            sqlite3_finalize(ppStmt);
            
        }
        else{
            NSLog(@"FAILED TO PREPARE STATEMENT, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
        }
    }
    else{
        NSLog(@"FAILED TO OPEN DATABASE, SORRY!");
        NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
    }
    sqlite3_close(movies);
}


-(void) delete_mydb:(NSString *)query{
    
    NSString *dbPath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"sqlite3"];
    
    if(sqlite3_open([dbPath UTF8String], &movies) == SQLITE_OK){
        const char* query_stat = [query UTF8String];
        sqlite3_stmt *ppStmt;
        if(sqlite3_prepare_v2(movies, query_stat, -1, &ppStmt, NULL) == SQLITE_OK){
            if(sqlite3_step(ppStmt) == SQLITE_OK){
                sqlite3_finalize(ppStmt);
                NSLog(@"ROW DELETED, YAY!");
            }
            else{
                //NSLog(@"FAILED TO EXECUTE QUERY. SORRY!");
               // NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
            }
        }
        else{
            NSLog(@"FAILED TO PREPARE STATEMENT, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
        }
    }
    else{
        NSLog(@"FAILED TO OPEN DATABASE, SORRY!");
        NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
    } sqlite3_close(movies);
    // NSLog(@"insert %@",query);
}



-(void) update_mydb:(NSString *)query{
    
    NSString *dbPath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"sqlite3"];
    
    if(sqlite3_open([dbPath UTF8String], &movies) == SQLITE_OK){
        const char* query_stat = [query UTF8String];
        sqlite3_stmt *ppStmt;
        if(sqlite3_prepare_v2(movies, query_stat, -1, &ppStmt, NULL) == SQLITE_OK){
            if(sqlite3_step(ppStmt) == SQLITE_OK){
                sqlite3_finalize(ppStmt);
                NSLog(@"COLUMN(S) ADDED, YAY!");
            }
            else{
               // NSLog(@"FAILED TO EXECUTE QUERY. SORRY!");
            //NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
            }
        }
        else{
            NSLog(@"FAILED TO PREPARE STATEMENT, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
        }
    }
    else{
        NSLog(@"FAILED TO OPEN DATABASE, SORRY!");
        NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
    } sqlite3_close(movies);
    // NSLog(@"insert %@",query);
}


-(void) create_mydb:(NSString *)query{
    
    NSString *dbPath = [[NSBundle mainBundle] pathForResource:@"movies" ofType:@"sqlite3"];
    
    if(sqlite3_open([dbPath UTF8String], &movies) == SQLITE_OK){
        const char* query_stat = [query UTF8String];
        sqlite3_stmt *ppStmt;
        if(sqlite3_prepare_v2(movies, query_stat, -1, &ppStmt, NULL) == SQLITE_OK){
            if(sqlite3_step(ppStmt) == SQLITE_OK){
                sqlite3_finalize(ppStmt);
                NSLog(@"TABLE CREATED, YAY!");
            }
            else{
               // NSLog(@"FAILED TO EXECUTE QUERY. SORRY!");
           // NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
            }
        }
        else{
            NSLog(@"FAILED TO PREPARE STATEMENT, SORRY!");
            NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
        }
    }
    else{
        NSLog(@"FAILED TO OPEN DATABASE, SORRY!");
        NSLog([[NSString alloc] initWithUTF8String: sqlite3_errmsg(movies)]);
    } sqlite3_close(movies);
    // NSLog(@"insert %@",query);
}

@end
