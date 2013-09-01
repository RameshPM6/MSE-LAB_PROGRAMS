#import<Foundation/Foundation.h>
#import "Employee_alter.h"

@implementation Employee_alter
-(void)setname : (const char*)astring;
{
strcpy(name,astring);
}
-(void)setdept : (const char*)bstring;
{
strcpy(dept,bstring);
}
-(void)seteid : (int) x;
{
eid=x;
}
-(void)print
{
printf("%s\n",name);
printf("%s\n",dept);
printf("%d\n",eid);
}
@end