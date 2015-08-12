//
//  homeViewController.m
//  Cladding
//
//  Created by SpurTree on 05/05/15.
//  Copyright (c) 2015 SpurTree. All rights reserved.
//

#import "homeViewController.h"

@interface homeViewController ()

@end

@implementation homeViewController

- (void)viewDidLoad
{
    
    
    
    homename = [NSMutableArray arrayWithObjects:@"Egg BenedictEgg BenedictEgg BenedictEgg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"HamburgerEgg BenedictEgg BenedictEgg Benedict", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate DonutEgg BenedictEgg BenedictEgg Benedict", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with EggEgg BenedictEgg BenedictEgg BenedictEgg BenedictEgg Benedict", nil];
    
    homelymealsimg = [NSArray arrayWithObjects:@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg",nil];
    
    homedesc=[NSMutableArray arrayWithObjects:@"1 Objective-C programming language provides a data structure called the array, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.",@"2 Here at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this class.",@"3 Objective-C programming language provides a data structure called the array, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.",@"4 Here at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this class.",@"5 Here at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this class.",@"6 Here at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this class. ",@"7 Objective-C programming language provides a data structure called the array, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.",@"8 Objective-C programming language provides a data structure called the array, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.",@"9Objective-C programming language provides a data structure called the array, which can store a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index.All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element. ",@"10 Here at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this classHere at iCodeblog, we have been showing you guys how to create many different types of applications from the ground up. Well, today I decided to do something different and get down to some of the nitty gritty of a structure we rely heavily on in objective-C.The NSArray is a huge workhorse that we use quite frequently without even thinking about it. The NSArray class isn’t just your ordinary array. Not only does it provide random access, but it also dynamically re-sizes when you add new objects to it and has many methods to make our lives easier. While I won’t go over every method in NSArray (there are quite a few), I will discuss some of the more important ones that are most commonly used. Let’s take a closer look at this class", nil];
    
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"homlycell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell== nil)
    {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    UILabel *flatLabel = (UILabel *)[cell viewWithTag:101];
    flatLabel.text = [homename objectAtIndex:indexPath.row];
    
    
    UILabel *flatdesc = (UILabel *)[cell viewWithTag:102];
    flatdesc.text = [homedesc objectAtIndex:indexPath.row];
    
    
    
    UIImageView *flatimage = (UIImageView *)[cell viewWithTag:100];
    flatimage.image = [UIImage imageNamed:[homelymealsimg objectAtIndex:indexPath.row]];
    
    return cell;
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return homename.count;
    
    
}

@end
