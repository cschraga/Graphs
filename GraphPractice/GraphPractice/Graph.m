//
//  Graph.m
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import "Graph.h"
#import "GraphNode.h"
#import "LinkedList.h"

@interface Graph ()

-(void) dfsWithPrintAtNode: (nullable GraphNode*)node withVisited: (NSMutableDictionary **)dictionary;

@end

@implementation Graph

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nodes = [LinkedList list];
    }
    return self;
}

-(void) addObjectToGraph:(NSObject *)object {
    GraphNode *newNode = [GraphNode graphNodeWithData:object];
    if (newNode) {
        [_nodes enqueue:newNode];
    }
}

-(void) addEdgeFromObject:(NSObject *)fromObject toObject:(NSObject *)toObject {
    //find graph node of from object and to object
    GraphNode  * _Nullable fromNode = nil;
    GraphNode  * _Nullable toNode = nil;
    BOOL timeToStop = NO;
    
    //1) enumerate through linked list without deleting;
    [_nodes resetEnumeration];
    
    while (!timeToStop) {
        GraphNode * _Nullable nextNode = (GraphNode *)[_nodes enumerateNextNode];
        NSObject  * _Nullable nextNodeData = (nextNode) ? [nextNode data] : nil;
        fromNode = (nextNodeData == fromObject) ? nextNode : fromNode;
        toNode   = (nextNodeData == toObject)  ? nextNode  : toNode;
        timeToStop = (fromNode && toNode) || !nextNode;
    }
    
    //then add toobject as edge in fromobject
    if (fromNode && toNode) {
        NSLog(@"found edge");
        [fromNode addEdgeToNode:toNode];
    }
    
    
}

-(void)dfsWithPrintAtNode:(GraphNode *)node withVisited:(NSMutableDictionary **)dictionary {
    GraphNode *currentNode= node;
    NSString  *key;
    
    //1)top loop.
    if (!node) {
        NSLog(@"New Root Node Child: \n");
        
        currentNode = (GraphNode *)[_nodes dequeue];
        
    } 
    
    if (currentNode) {
        //2) if there is a current node, check it against dictionary
        key = [currentNode description];
        if ([*dictionary objectForKey:key]) {
            
            //already visited, go to its next child
            [self dfsWithPrintAtNode:[currentNode nextEdge] withVisited:dictionary];
            
        } else {
            //3) if not in dictionary, print, then add to dictionary
            NSLog(@"Graph Node: %@ \n", [currentNode description]);
            [*dictionary setObject:[currentNode data] forKey:key];
            
            //4) then recurse with first child, or if empty pass nil and #1 will pick it up
            [self dfsWithPrintAtNode:[currentNode nextEdge] withVisited:dictionary];
            
        }
        
        
    } else {
        //3) If there are no more nodes, stop
        
        NSLog(@"depth first search complete");
    }
}

-(void) breadthFirstSearchWithPrint {
    LinkedList *queue = [LinkedList list];
    GraphNode  *currentNode = (GraphNode *)[_nodes dequeue];
    NSMutableDictionary *visited = [NSMutableDictionary dictionary];
    
    //1) fill queue
    while (currentNode) {
        NSString   *key = [currentNode description];
        if (![visited objectForKey:key]) {
            [visited setObject:currentNode forKey:key];
            [queue enqueue:currentNode];
        }
        
        currentNode = [currentNode nextEdge];
        
        if (!currentNode) {
            currentNode = (GraphNode *)[_nodes dequeue];
        }
    }
    
    //2) print queue
    while (![queue isEmpty]) {
        currentNode = (GraphNode *)[queue dequeue];
        NSLog(@"Graph Node: %@ \n", [currentNode description]);
    }
    
}

-(void)depthFirstSearchWithPrint {
    NSMutableDictionary *visited = [NSMutableDictionary dictionary];
    [self dfsWithPrintAtNode:nil withVisited:&visited];
}

+ (Graph *) graph {
    return [[Graph alloc] init];
}

@end
