//
//  ViewController.h
//  Stack
//
//  Created by sanjeev bharti on 3/16/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Node.h"

@interface ViewController : UIViewController {
    
    Node *header ; //header node

    IBOutlet    UILabel *lblStack ;
}

// insert element to stack
- (void)pushDataToNode:(int)data ;

//remove header node from list
- (void)pop ;

//traverse all elements of linklist
- (void)travers:(Node *)node ;

//delete any element from linklist with given data
- (void)popNodeWithData:(int)data andNode:(Node *)node ;

@end

