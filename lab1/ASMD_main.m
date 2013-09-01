#import<Foundation/Foundation.h>
#import "ASMD.h"

int main(int argc,char *argv[])
{
	ASMD *obj=[[ASMD alloc]init];
	NSLog(@"Hello");
	[obj assign:10 andb:0];
	[obj add];
	[obj sub];
	[obj multiply];
	[obj divide];
	[obj release];
	return 0;
}