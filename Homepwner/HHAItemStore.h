//
//  HHAItemStore.h
//  Homepwner
//
//  Created by 李欢 on 2021/3/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class HHAItem;

@interface HHAItemStore : NSObject

@property (readonly, nonatomic) NSArray *allItems;

+ (instancetype)sharedStore;
- (HHAItem *)createItem;

@end

NS_ASSUME_NONNULL_END
