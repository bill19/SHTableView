//
//  SHTableView.m
//  SHTableView
//
//  Created by hao sun on 2022/3/3.
//

#import "SHTableView.h"

@interface SHTableView ()<UITableViewDelegate, UITableViewDataSource>

/// <#name#>
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation SHTableView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        
        _tableView.showsVerticalScrollIndicator = NO;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.backgroundColor = [UIColor whiteColor];
        
        if (@available(iOS 11.0, *)) {
            _tableView.estimatedSectionHeaderHeight = 0.01;
            _tableView.estimatedSectionFooterHeight = 0.01;
            _tableView.sectionFooterHeight = 0.01;
            _tableView.sectionHeaderHeight = 0.01;
        }

    }
    return _tableView;
}

@end
