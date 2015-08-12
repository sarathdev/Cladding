//
//  ViewController.m
//  Cladding
//
//  Created by SpurTree on 30/04/15.
//  Copyright (c) 2015 SpurTree. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{

}

- (void)viewDidLoad {
   
    
    
    
    
    
    imgarray = @[@"1.jpg",@"2.jpg",@"3.jpg",@"4.jpg",@"5.jpeg",@"6.jpg",@"7.jpg",@"8.jpg",@"9.jpg",@"10.jpg"];
    flatNamearray = @[@"flat1",@"flat02",@"flat03",@"flat04",@"flat05",@"flat06",@"flat07",@"flat08",@"flat09",@"flat10"];
    
    halfdescrption = @ [
                        @"1 Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:", @"2 The NSMutableArray class ts you dynamically add or remove items from arbitrary locations in the collection. Keep in mind that it’s slower to insert or delete elements from a mutable array than a set or a dictionary.Like mutable sets, mutable arrays are often used to represent the state of a system, but the fact that NSMutableArray records the order of its elements opens up new modeling opportunities.", @"3 Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:",@"4 The NSMutableArray class lets you dynamically add or remove items from arbitrary locations in the collection. Keep in mind that it’s slower to insert or delete elements from a mutable array than a set or a dictionary.Like mutable sets, mutable arrays are often used to represent the state of a system, but the fact that NSMutableArray records the order of its elements opens up new modeling opportunities.",@"5 The NSMutableArray class lets you dynamically add or remove items from arbitrary locations in the collection. Keep in mind that it’s slower to insert or delete elements from a mutable array than a set or a dictionary.Like mutable sets, mutable arrays are often used to represent the state of a system, but the fact that NSMutableArray records the order of its elements opens up new modeling opportunities.",@"6  Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:",@"7  Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:", @"8  Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:",@" 9  Fast-enumeration is the most efficient way to iterate over an NSArray, and its contents are guaranteed to appear in the correct order. It’s also possible to use the count method with a traditional for-loop to step through each element in the array:",@"10 The NSMutableArray class lets you dynamically add or remove items from arbitrary locations in the collection. Keep in mind that it’s slower to insert or delete elements from a mutable array than a set or a dictionary.Like mutable sets, mutable arrays are often used to represent the state of a system, but the fact that NSMutableArray records the order of its elements opens up new modeling opportunities"];
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"flatcell";
 
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 
    if (cell== nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
  
    
    UILabel *flatLabel = (UILabel *)[cell viewWithTag:101];
    flatLabel.text = [flatNamearray objectAtIndex:indexPath.row];
    
    
    UILabel *flatdesc = (UILabel *)[cell viewWithTag:102];
    flatdesc.text = [halfdescrption objectAtIndex:indexPath.row];
    
    
    UIImageView *flatimage = (UIImageView *)[cell viewWithTag:100];
    flatimage.image = [UIImage imageNamed:[imgarray objectAtIndex:indexPath.row]];
    
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    flatname = [flatNamearray objectAtIndex:indexPath.row];
    flatimagename =[imgarray objectAtIndex:indexPath.row];
    flatdescription = [halfdescrption objectAtIndex:indexPath.row];
    
    

    
    [self performSegueWithIdentifier:@"flatidentifier" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Make sure your segue name in storyboard is the same as this line
   
    if ([[segue identifier] isEqualToString:@"flatidentifier"])
    {
        // Get reference to the destination view controller
         //flatDetailViewController*vc = [segue destinationViewController];
        vc = [segue destinationViewController];
        vc.productName = flatname;
        vc.flatimg = flatimagename;
        vc.desc = flatdescription;
        
    }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return flatNamearray.count;
    
}
@end
