//
//  PrototypeCellsTableTableViewController.m
//  Clase4-ListTableViewController
//
//  Created by SAMUEL on 20/8/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "PrototypeCellsTableTableViewController.h"
#import "ButtonTableViewCell.h"
#import "LabelTableViewCell.h"

@interface PrototypeCellsTableTableViewController ()

@end

@implementation PrototypeCellsTableTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if(section == 0){
        return 2;
    }else{
        return 3;
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = nil;
    if(indexPath.section == 0){
        if(indexPath.row == 0){
            cell=[tableView dequeueReusableCellWithIdentifier:@"button cell" forIndexPath:indexPath];
            cell.backgroundColor = [UIColor greenColor];
            //[cell.button setTitle =@"Seccion 0 row 0" forState:UIControlStateNormal];
            return cell;
        }
        else if(indexPath.row == 1){
            cell=[tableView dequeueReusableCellWithIdentifier:@"label cell" forIndexPath:indexPath];
            //cell.label.text=@"De la seccion 0";
            return cell;
        }
    }
    else if(indexPath.section == 1){
        if(indexPath.row == 0){
            cell=[tableView dequeueReusableCellWithIdentifier:@"button cell" forIndexPath:indexPath];
            cell.backgroundColor = [UIColor orangeColor];
            //[cell.button setTitle =@"Seccion 1 row 0" forState:UIControlStateNormal];
            return cell;
        }
        else if(indexPath.row == 1){
            cell=[tableView dequeueReusableCellWithIdentifier:@"button cell" forIndexPath:indexPath];
            cell.backgroundColor = [UIColor blueColor];
            //[cell.button setTitle =@"Seccion 1 row 1" forState:UIControlStateNormal];
            return cell;
        }
        if(indexPath.row == 2){
            cell=[tableView dequeueReusableCellWithIdentifier:@"label cell" forIndexPath:indexPath];
            //cell.label.text=@"De la seccion 2";
            return cell;
        }
    }
    
    return nil;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
