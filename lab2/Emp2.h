#import<Foundation/Foundation.h>
@interface Employee_alter:NSObject
{
 char name[50];
 char dept[20];
 int eid;
}
-(void)setname : (char*)string;
-(void)setdept : (char*)string;
-(void)seteid : (int) x;
-(void)print;
@end