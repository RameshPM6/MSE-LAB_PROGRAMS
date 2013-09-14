#import<Foundation/Foundation.h>
#import"phonecard.h"
@implementation phonecard
-(void)print
{
	NSLog(@"---------------------------------------------");
	NSLog(@"Name : %@\n",name);
	NSLog(@"Email : %@\n",email);
	NSLog(@"Id : %d\n",no);
	NSLog(@"---------------------------------------------");
}
-(NSString*)getName
{
	return name;
}
@synthesize name,email,no;
@end