#import "ASMD.h"
@implementation ASMD

	
	-(void)assign:(int )x andb :(int)y
	{
		a=x;
		b=y;
	}

	-(void)add
	{
			printf("Sum : %i\n",(a+b));
	}
	
	-(void)sub
	{
			printf("Difference : %i\n",(a-b));
	}
	
	-(void)multiply
	{
			printf("Product : %i\n",(a*b));
	}
	-(void)div
	{
		if(b==0)
		{
			printf("Ratio cann't be performed\n");
		}
		else
		{
			printf("Ratio : %i\n",a/b);
		}
	}


@end