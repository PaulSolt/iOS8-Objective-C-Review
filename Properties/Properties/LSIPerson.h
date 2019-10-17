//
//  LSIPerson.h
//  Properties
//
//  Created by Paul Solt on 10/17/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSIPerson : NSObject

// RULE: always use copy with NSString to prevent side effects

// 1. Use copy with your property
@property (copy) NSString *name;












- (instancetype)initWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
