//
//  testViewController.m
//  simpleTODO
//
//  Created by Ider Delzo on 12/23/13.
//  Copyright (c) 2013 Ider Delzo. All rights reserved.
//

#import "testViewController.h"
#import "logic/TODODataManager.h"

@interface testViewController ()

@end

@implementation testViewController

TODODataManager *dataManager;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize table data
//    dataManager = [TODODataManager sharedManager];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    return [dataManager count];
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }

//    cell.textLabel.text = [dataManager objectAtIndex:indexPath.row];
    return cell;
}

@end
