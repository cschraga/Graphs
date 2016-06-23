//
//  main.m
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "HeapableCar.h"
#import "LinkedList.h"
#import "GraphNode.h"
#import "Graph.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        HeapableCar *car1 = [HeapableCar carWithMake:@"Honda" andModel:@"Accord" andPrice:@30000];
        HeapableCar *car2 = [HeapableCar carWithMake:@"Honda" andModel:@"Civic" andPrice:@38000];
        HeapableCar *car3 = [HeapableCar carWithMake:@"Honda" andModel:@"Minivan" andPrice:@27000];
        HeapableCar *car4 = [HeapableCar carWithMake:@"Ferarri" andModel:@"Testarossa" andPrice:@122000];
        HeapableCar *car5 = [HeapableCar carWithMake:@"Toyota" andModel:@"Camry" andPrice:@21500];
        HeapableCar *car6 = [HeapableCar carWithMake:@"Lexus" andModel:@"L300" andPrice:@71700];
        HeapableCar *car7 = [HeapableCar carWithMake:@"Chevy" andModel:@"Impala" andPrice:@8800];
        HeapableCar *car8 = [HeapableCar carWithMake:@"Lamborghini" andModel:@"Diablo" andPrice:@192000];
        HeapableCar *car9 = [HeapableCar carWithMake:@"Ford" andModel:@"F100" andPrice:@42100];
        HeapableCar *car10 = [HeapableCar carWithMake:@"Ford" andModel:@"Car" andPrice:@16060];
        
        /*
        LinkedList *queue = [[LinkedList alloc] init];
        [queue enqueue:car1];
        [queue enqueue:car2];
        [queue enqueue:car3];
        [queue enqueue:car4];
        [queue enqueue:car5];
        [queue enqueue:car6];
        [queue enqueue:car7];
        [queue enqueue:car8];
        [queue enqueue:car9];
        [queue enqueue:car10];
        
        
        HeapableCar *car = (HeapableCar *)[queue dequeue];
        NSString *description = [car describeMe];
        NSLog(@"Dequeued car: %@", description);
        */
        
        Graph *graph = [Graph graph];
        [graph addObjectToGraph:car1];
        [graph addObjectToGraph:car2];
        [graph addObjectToGraph:car3];
        [graph addObjectToGraph:car4];
        [graph addObjectToGraph:car5];
        [graph addObjectToGraph:car6];
        [graph addObjectToGraph:car7];
        [graph addObjectToGraph:car8];
        [graph addObjectToGraph:car9];
        [graph addObjectToGraph:car10];
        
        [graph addEdgeFromObject:car1 toObject:car2];
        [graph addEdgeFromObject:car1 toObject:car3];
        [graph addEdgeFromObject:car1 toObject:car4];
        [graph addEdgeFromObject:car2 toObject:car5];
        [graph addEdgeFromObject:car2 toObject:car9];
        [graph addEdgeFromObject:car3 toObject:car6];
        [graph addEdgeFromObject:car4 toObject:car7];
        [graph addEdgeFromObject:car5 toObject:car8];
        [graph addEdgeFromObject:car5 toObject:car6];
        [graph addEdgeFromObject:car7 toObject:car8];
        [graph addEdgeFromObject:car7 toObject:car6];
        [graph addEdgeFromObject:car6 toObject:car8];
        [graph addEdgeFromObject:car8 toObject:car1];
        [graph addEdgeFromObject:car9 toObject:car10];
        [graph addEdgeFromObject:car10 toObject:car1];
        
        [graph breadthFirstSearchWithPrint];
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
