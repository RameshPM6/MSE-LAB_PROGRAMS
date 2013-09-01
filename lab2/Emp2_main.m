#import<Foundation/Foundation.h>
#import "Employee_alter.m"
#import "Employee_alter.h"
int main(int argc,char *argv[])
{
	Employee_alter *e2= [[Employee_alter alloc] init];
	[e2 setname:"ABC"];
	[e2 setdept:"ISE"];
	[e2 seteid:1];
	[e2 release];
	return 0;
}