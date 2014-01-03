#import <Foundation/Foundation.h>
#import "TODODataManager.h"

static dispatch_once_t oncePredicate;

@implementation TODODataManager

+ (TODODataManager *)sharedManager
{
    static TODODataManager *_sharedManager;
    dispatch_once(&oncePredicate, ^{
        _sharedManager = [[self alloc] init];
    });
    return _sharedManager;
}

- (id)init
{
    if (self = [super init]) {
        //_TODOList = [[NSMutableArray alloc] init];
        //_TODOList = [NSMutableArray arrayWithObjects:@"Go to the market", @"do homework", @"make breakfast", nil];
    }
    return self;
}

- (void) setObjects:(NSArray *)objects
{
    _TODOList = [NSMutableArray arrayWithArray:objects];
}

-(NSUInteger) count
{
    return [_TODOList count];
}

- (NSString *) objectAtIndex:(NSUInteger)index
{
    return [_TODOList objectAtIndex:index];
}
@end
