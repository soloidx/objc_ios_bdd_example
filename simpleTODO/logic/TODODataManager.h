#import <Foundation/Foundation.h>

@interface TODODataManager : NSObject
{
    NSMutableArray *_TODOList;
}

+ (TODODataManager *)sharedManager;

- (void) setObjects:(NSArray *)objects;
- (NSUInteger) count;
- (NSString *) objectAtIndex:(NSUInteger)index;

@end
