//
//  ViewController.m
//  Homepwner
//
//  Created by 李欢 on 2021/3/27.
//

#import "HHAItemsViewController.h"
#import "HHAItemStore.h"
#import "HHAItem.h"

@interface HHAItemsViewController ()

@end

@implementation HHAItemsViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        for (int i = 0; i < 5; i++) {
            [[HHAItemStore sharedStore] createItem];
        }
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    return [self init];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    return [self init];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [HHAItemStore sharedStore].allItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    NSArray *items = [HHAItemStore sharedStore].allItems;
    HHAItem *item = items[indexPath.row];
    cell.textLabel.text = item.description;
    return cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
}

@end
