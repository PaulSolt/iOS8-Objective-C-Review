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



//	NSString *daveString = @"Dave";
	NSString *daveString = [@"Dave" mutableCopy]; // NSMutableString *
	LSIPerson *dave = [[LSIPerson alloc] initWithName: daveString];

	printf("daveString: %s\n", daveString.UTF8String);
	printf("dave.name: %s\n", dave.name.UTF8String);

	// Cast to NSMutableString
//	daveString.string = @"Sam"; // Error: Property 'string' not found on object of type 'NSString *'
//	[(NSMutableString *)(daveString) setString:@"Sam"];
	
//	dave.name = daveString; // copy

	
	NSMutableString *mutableString = (NSMutableString *)daveString;
	mutableString.string = @"Sam";
	
//	[daveString setValue:@"Sue" forKeyPath:@"string"];
	dave.name = @"David";
	
	printf("daveString: %s\n", daveString.UTF8String);
	printf("dave.name: %s\n", dave.name.UTF8String); // This should always be Dave, unless we change the property dave.name

	// We never want to break encapsulation
	// Protect our instance variables (internal data)
	// Object Oriented Programming
	// Swift + Objective-C: Object Oriented Programming Languages
	// C: Procedural programming language (functions)
	
	
	BOOL didFinish = dave.isFinished;
	BOOL didFinish2 = dave.finished;

	
}


@end
