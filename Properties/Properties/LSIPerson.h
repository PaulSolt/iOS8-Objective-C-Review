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
@property (nonatomic, copy) NSString *name;

/*
 
 // Manual Reference Counting (MRC)
 
 retain (+1)
 copy (+1)
 assign (DEFAULT)
 unsafe_unretained

 // Automatic Reference Counting (ARC)

 strong (DEFAULT)
 copy
 weak
 
 readwrite (DEFAULT)
 readonly
 
 nonatomic
 atomic (DEFAULT)
 
 setter=methodName
 getter=methodName
 */

@property (getter=isFinished) BOOL finished;
//@property BOOL finished;


- (instancetype)initWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
