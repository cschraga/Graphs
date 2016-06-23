//
//  GraphNode.m
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import "GraphNode.h"
#import "HeapableCar.h"

@implementation GraphNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        _children = [LinkedList list];
    }
    return self;
}

-(instancetype) initWithData:(NSObject *)data {
    self = [self init];
    self.data = data;
    return self;
}

-(BOOL) isEmpty{
    return [_children isEmpty];
}

-(NSString *)description {
    NSString *result = @"";
    if ([_data class] == [HeapableCar class]) {
        result = [(HeapableCar *)_data describeMe];
    }
    return result;
}

-(void)addEdgeToNode:(GraphNode *)node {
    [_children enqueue:node];
}

-(GraphNode *)nextEdge {
    return (GraphNode *)[_children dequeue];
}

+(GraphNode *)graphNode {
    return [[GraphNode alloc] init];
}

+(GraphNode *)graphNodeWithData:(NSObject *)data {
    return [[GraphNode alloc] initWithData:data];
}

@end
