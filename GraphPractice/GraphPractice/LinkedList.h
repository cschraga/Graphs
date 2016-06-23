//
//  LinkedList.h
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListNode.h"

@interface LinkedList : NSObject

@property (nonatomic, nullable, strong) ListNode *firstNode;
@property (nonatomic, nullable, strong) ListNode *lastNode;
@property (nonatomic, nullable, strong) ListNode *nextNode;

-(BOOL) isEmpty;
-(void) resetEnumeration;
-(nullable NSObject *) enumerateNextNode;
-(void) enqueue: (nonnull NSObject *)object;
-(nullable NSObject *) dequeue;
+(nullable LinkedList *) list;
@end
