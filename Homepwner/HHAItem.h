//
//  HHAItem.h
//  Homepwner
//
//  Created by 李欢 on 2021/3/27.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HHAItem : NSObject

@property (copy, nonatomic) NSString * itemName;
@property (copy, nonatomic) NSString * serialNumber;
@property (nonatomic) NSInteger valueInDollars;
@property (strong, nonatomic) NSDate * dateCreated;

- (instancetype)initWithItemName:(NSString *)name valueInDollars:(NSInteger)value serialNumber:(NSString *)number;
- (instancetype)initWithItemName:(NSString *)name;
+ (HHAItem *)randomItem;

@end

NS_ASSUME_NONNULL_END
