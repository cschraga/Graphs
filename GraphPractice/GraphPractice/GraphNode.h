//
//  GraphNode.h
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedList.h"

@interface GraphNode : NSObject

@property (nonatomic, strong, nonnull) NSObject *data;
@property (nonatomic, strong, nonnull) LinkedList *children;

-(nonnull NSString*) description;
-(nullable instancetype) initWithData: (nonnull NSObject *)data;
-(void) addEdgeToNode: (nonnull GraphNode *)node;
-(BOOL) isEmpty;
-(nullable GraphNode*) nextEdge;
+(nullable GraphNode*) graphNode;
+(nullable GraphNode*) graphNodeWithData: (nonnull NSObject *)data;

@end
