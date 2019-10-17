//
//  LSIPerson.m
//  Properties
//
//  Created by Paul Solt on 10/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson

- (instancetype)initWithName:(NSString *)name {
	if (self = [super init]) {
		_name = name;
	}
	return self;
}
@end
