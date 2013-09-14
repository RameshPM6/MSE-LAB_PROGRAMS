#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize BillAmt;
@synthesize TaxAmt;
@synthesize TotalAmt;
@synthesize BillType;

-(void) print
{
	NSLog(@"Bill Amount : %d \n", BillAmt);
	NSLog(@"Bill Type : %d \n", BillType);
	NSLog(@"Tax Amount : %d \n", TaxAmt);
	NSLog(@"Total Amount : %d \n", TotalAmt);
	
}
@end