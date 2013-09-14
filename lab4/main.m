#import <Foundation/Foundation.h>
#import "phonebook.h"
#import "phonecard.h"

int main()
{
	NSAutoreleasePool *myPool = [[NSAutoreleasePool alloc] init];
	phonecard *p1=[[phonecard alloc]init];
	phonecard *p2=[[phonecard alloc]init];
	phonecard *p3=[[phonecard alloc]init];
	phonecard *p4=[[phonecard alloc]init];
	phonecard *p5=[[phonecard alloc]init];
	phonecard *p6=[[phonecard alloc]init];
	phonecard *p7=[[phonecard alloc]init];
	[p1 setName:@"abc"];
	[p1 setEmail:@"qwerty@domain.com"];
	[p1 setNo:1];
	
	[p2 setName:@"def"];
	[p2 setEmail:@"google@doodle.com"];
	[p2 setNo:2];

	[p3 setName:@"ghi"];
	[p3 setEmail:@"yahoo@rocketmail.com"];
	[p3 setNo:3];

	[p4 setName:@"jkl"];
	[p4 setEmail:@"faculty@pes.edu"];
	[p4 setNo:4];
	
	[p5 setName:@"mno"];
	[p5 setEmail:@"xyz@zyx.com"];
	[p5 setNo:5];
	
	[p6 setName:@"pqr"];
	[p6 setEmail:@"zzz@yyy.com"];
	[p6 setNo:6];

	[p7 setName:@"stu"];
	[p7 setEmail:@"sachin@cricket.com"];
	[p7 setNo:7];


	phonebook *p_book=[[phonebook alloc]initWithName:@"My Book"];
	
	[p_book addobj:p1];
	[p_book addobj:p2];
	[p_book addobj:p3];
	[p_book addobj:p4];
	[p_book addobj:p5];
	[p_book addobj:p6];
	[p_book addobj:p7];
	[p_book findByName:@"ghi"];
	[p_book print];
	[p_book deleteContact:@"pqr"];
	[p_book print];
	[myPool drain];
	return 0;
}