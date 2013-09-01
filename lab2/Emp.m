#import<Foundation/Foundation.h>
#import"Employee.h"
@implementation Employee
-(void)setname:(NSString *)str
{
	name=str;
}
-(void)setdomain:(NSString*)str
{
	dom=str;
}

-(void)setid:(int)x
{
	eid=x;
}
-(void)display
{
	NSLog(@"Name is %@\n",name);
	NSLog(@"Id is %d\n",eID);
	NSLog(@"Domain is %@\n",dom);

}
@synthesize name,eid,dom;

@end