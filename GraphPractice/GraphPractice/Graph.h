//
//  Graph.h
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"
#import "GraphNode.h"

@interface Graph : NSObject

@property (nonatomic, strong, nonnull) LinkedList *nodes;
-(void) addObjectToGraph: (nonnull NSObject *)object;
-(void) addEdgeFromObject: (nonnull NSObject *)fromObject toObject: (nonnull NSObject *)toObject;
+(nullable Graph*) graph;
-(void) depthFirstSearchWithPrint;
-(void) breadthFirstSearchWithPrint;
@end
