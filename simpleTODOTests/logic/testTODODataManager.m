#import "Kiwi.h"
#import "TODODataManager.h"

SPEC_BEGIN(TODODataManagerBehavior)

describe(@"SharedManager initialization", ^{
    it(@"should be initialized just once", ^{
        
        TODODataManager *oldObject = [TODODataManager sharedManager];
        TODODataManager *newObject = [TODODataManager sharedManager];
        
        [[oldObject should]equal:newObject];
    });

});

describe(@"ShareManager can count and return objects", ^{
    beforeAll(^{
        TODODataManager *manager = [TODODataManager sharedManager];
        [manager setObjects:@[@"Go to the market", @"do homework", @"make breakfast"]];
    });
    
    it(@"should count 3", ^{
        TODODataManager *manager = [TODODataManager sharedManager];
        [[theValue([manager count]) should] equal:theValue(3)];
    });
    
    it(@"should return an element given an index", ^{
        TODODataManager *manager = [TODODataManager sharedManager];
        NSString *singleElement = [manager objectAtIndex:1];
        [[singleElement should] equal:@"do homework"];
    });
});

SPEC_END
