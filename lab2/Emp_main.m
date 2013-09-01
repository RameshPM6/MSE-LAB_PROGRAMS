#import<Foundation/Foundation.h>
#import "Employee.h"
int main(int argc,char *argv[])
{
	Employee *e=[[Employee alloc]init];
	[e setname:@"XYZ"];
	[e setid:1];
	[e setdomain:@"designer"];
	[e display];
	[e release];
	return 0;
}