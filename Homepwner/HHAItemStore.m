//
//  HHAItemStore.m
//  Homepwner
//
//  Created by 李欢 on 2021/3/27.
//

#import "HHAItemStore.h"
#import "HHAItem.h"

@interface HHAItemStore ()

@property (copy, nonatomic) NSMutableArray *privateItems;

@end

@implementation HHAItemStore

- (NSArray *)allItems {
    return self.privateItems;
}

+ (instancetype)sharedStore {
    static HHAItemStore *sharedStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedStore = [[HHAItemStore alloc] initPrivate];
    });
    return sharedStore;
}

- (instancetype)initPrivate {
    self = [super init];
    if (self) {
        _privateItems = [NSMutableArray array];
    }
    return self;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"singleTon"
                                   reason:@"use + [HHAItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

- (HHAItem *)createItem {
    HHAItem *newItem = [HHAItem randomItem];
    [self.privateItems addObject:newItem];
    return newItem;
}

@end
