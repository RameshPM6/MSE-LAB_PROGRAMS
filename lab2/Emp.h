#import<Foundation/Foundation.h>
@interface Employee:NSObject
{
	NSString *name,*dom;
	int eid;
}
@property(readwrite) int eid;
@property(readwrite,retain)NSString * name;
@property(readwrite,retain) NSString *dom;
-(void)setname:(NSString *)str;
-(void)setid:(int)x;
-(void)setdomain:(NSString *) str;
-(void)display;
@end