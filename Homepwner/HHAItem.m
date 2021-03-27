//
//  HHAItem.m
//  Homepwner
//
//  Created by 李欢 on 2021/3/27.
//

#import "HHAItem.h"

@implementation HHAItem

- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(NSInteger)value
                    serialNumber:(NSString *)number {
    self = [super init];
    if (self) {
        _itemName = name;
        _valueInDollars = value;
        _serialNumber = number;
        _dateCreated = [NSDate date];
    }
    return self;
}

- (instancetype)initWithItemName:(NSString *)name {
    return [self initWithItemName:name
                   valueInDollars:0
                     serialNumber:@""];
}

- (instancetype)init
{
    return [self initWithItemName:@"item"];
}

+ (HHAItem *)randomItem {
    NSArray *adjArr = @[@"1", @"2", @"3"];
    NSArray *nounArr = @[@"a", @"b", @"c"];
    NSInteger randomAdjIndex = arc4random() % adjArr.count;
    NSInteger randomNounIndex = arc4random() % nounArr.count;
    NSString *itemName = [NSString stringWithFormat:@"%@%@",
                          adjArr[randomAdjIndex],
                          nounArr[randomNounIndex]];
    
    NSInteger valueInDollars = arc4random() % 100;
    
    NSString *serialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                              '0' + arc4random() % 10,
                              'A' + arc4random() % 26,
                              '0' + arc4random() % 10,
                              'A' + arc4random() % 26,
                              '0' + arc4random() % 10];
    
    HHAItem *newItem = [[self alloc] initWithItemName:itemName
                                       valueInDollars:valueInDollars
                                         serialNumber:serialNumber];
    return newItem;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@%ld%@%@",
            self.itemName,
            self.valueInDollars,
            self.serialNumber,
            self.dateCreated];
}

- (void)dealloc
{
    NSLog(@"Destroyed:%@", self);
}

@end
