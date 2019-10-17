//
//  ViewController.m
//  Properties
//
//  Created by Paul Solt on 10/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSIPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];



	NSString *daveString = @"Dave";
	
	LSIPerson *dave = [[LSIPerson alloc] initWithName: daveString];


	printf("daveString: %s\n", daveString.UTF8String);
	printf("dave.name: %s\n", dave.name.UTF8String);


}


@end
