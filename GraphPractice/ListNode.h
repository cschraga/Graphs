//
//  ListNode.h
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ListNode : NSObject

@property (nonatomic, strong, nullable) ListNode *nextNode;
@property (nonatomic, strong, nonnull) NSObject *data;

-(nullable instancetype) initWithData: (nonnull NSObject *)data;
+(nullable ListNode *) listNodeWithData: (nonnull NSObject *)data;

@end
