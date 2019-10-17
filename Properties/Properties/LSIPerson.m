//
//  LSIPerson.m
//  Properties
//
//  Created by Paul Solt on 10/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson


// 2. Always copy in your initializers
- (instancetype)initWithName:(NSString *)name {
	if (self = [super init]) {
		_name = [name copy]; // immutable copy
	}
	return self;
}

// 3. always copy in setter
- (void)setName:(NSString *)name {
//	_name = name; // BUG not copying!!!
	_name = [name copy];
}

@end
