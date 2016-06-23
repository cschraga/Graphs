//
//  LinkedList.m
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

-(void) enqueue:(NSObject *)object {
    ListNode *listNode = [[ListNode alloc] initWithData:object];
    
    if (!_firstNode) {
        _firstNode = listNode;
    }
    
    if (_lastNode) {
        [_lastNode setNextNode:listNode];
    }
    
    _lastNode = listNode;
}

-(NSObject *)dequeue {
    
    ListNode *firstNode = _firstNode;
    
    if (_firstNode) {
        _firstNode = _firstNode.nextNode;
    }
    return [firstNode data];
    
}
    
-(void) resetEnumeration {
    _nextNode = nil;
}

-(BOOL) isEmpty {
    return !_firstNode;
}

-(NSObject *)enumerateNextNode {
    
    if ([self isEmpty]) {
        _nextNode = nil;
    } else {
        
        if (!_nextNode) {
            _nextNode = _firstNode;
        } else if (_nextNode == _lastNode) {
            _nextNode = nil;
        } else {
            _nextNode = [_nextNode nextNode];
        }
        
    }
    
    return [_nextNode data];
}

+(nullable LinkedList *) list {
    return [[LinkedList alloc] init];
}

@end
