//
//  ViewController.m
//  iOS8-KVO
//
//  Created by Paul Solt on 10/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"
#import "LSIColorController.h"

// 64-bit pointer (8 bytes)
void *colorContext = &colorContext; // "CellIdentifier" - Unique value that we can use
//void *textColorContext = &textColorContext;  // 0x00000001055417b8
//void *colorContext2 = @"color";	// Doesn't work! Crashes (WHY?)

@interface ViewController ()

@property (nonatomic, strong) LSIColorController *controller;


@property (strong, nonatomic) IBOutlet UIButton *button1;
@property (strong, nonatomic) IBOutlet UIButton *button2;

@end

@implementation ViewController

- (instancetype)initWithCoder:(NSCoder *)coder {
	if (self = [super initWithCoder:coder]) {
	
		// QUESTION: If I didn't need to setup ivars, do I need if statement?

		_controller = [[LSIColorController alloc] init];

		// Add observer
		[_controller addObserver:self forKeyPath:@"color" options:0 context:&colorContext];
		[_controller addObserver:self forKeyPath:@"textColor" options:NSKeyValueObservingOptionInitial context:&colorContext];

	}
	return self;
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
	
	if (context == colorContext) {
		
		if ([keyPath isEqualToString:@"color"]) {
			// Color updated
			NSLog(@"Background Color updated!");
			self.view.backgroundColor = self.controller.color;
		} else if ([keyPath isEqualToString:@"textColor"]) {
//			self.button1.titleLabeltextColor = self.controller.textColor;
			[self.button1 setTitleColor:self.controller.textColor forState:UIControlStateNormal];
			[self.button2 setTitleColor:self.controller.textColor forState:UIControlStateNormal];
		}
		
		
	} else {
		// Pass the message up the responder chain, so that someone else can handle this update
		[super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
	}
	
}

- (void)dealloc {
	[_controller removeObserver:self forKeyPath:@"color" context:colorContext];
	[_controller removeObserver:self forKeyPath:@"textColor" context:colorContext];
}

- (void)viewDidLoad {
	[super viewDidLoad];
	
	
}



- (IBAction)showColorPicker:(id)sender {
	
	self.controller.color = [UIColor systemBlueColor];

	// Create VC from storyboard
	// push it
	// update UI based on state change to the model object?
}

- (IBAction)changeTextColor:(id)sender {

	self.controller.textColor = [UIColor whiteColor];
}


// Send a notification to change background color



@end
