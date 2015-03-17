//
//  ViewController.m
//  Stack
//
//  Created by sanjeev bharti on 3/16/15.
//  Copyright (c) 2015 sanjeev bharti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

//create new node with data ;
- (Node *)createNewNodeWithData:(int)data ;

// animate label
- (void)animateLabel:(UILabel *)label ;


@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self animateLabel:lblStack];
    
    int counter = 10 ;

    //inserting 10 elements into stack
    while (counter-- > 0) [self pushDataToNode:10 * counter];
    
    NSLog(@"Initial Traverse through");
    [self travers:header];

    //pop the last inserted node
    NSLog(@"\n\n Poping Node");
    [self pop];
    
    NSLog(@"\n\n New Stack after popping node");
    [self travers:header];
    
    //deleting a specific node from stack
    NSLog(@"\n\n Deleting node with data = 90");
    [self popNodeWithData:90 andNode:header];
    
    NSLog(@"\n\n New Stack after deletion");
    [self travers:header];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -
#pragma mark - Stack Method

// insert element to stack
- (void)pushDataToNode:(int)data {
   
    //if list is empty, there would not be any header
    if (header == NULL) {
        
        header = [self createNewNodeWithData:data];
        
    } else {
        //we need to change the head position

        Node *_node = [self createNewNodeWithData:data];
        _node.next = header ;
        header = _node ;
        _node = nil ;
    }
}

//delete element from linklist
- (void)pop {
    
    if (header == NULL) {
    
        NSLog(@"List is empty");
        return ;
        
    } else {

        NSLog(@"Popped Node : %d",header.data);
        header = header.next ;
    }
}

//traverse all elements of linklist
- (void)travers:(Node *)node {
    
    if (node == NULL) return ;
    else {
        
        NSLog(@"node = %d",node.data);
        [self travers:node.next];
    }
}

//delete any element from linklist with given data
- (void)popNodeWithData:(int)data andNode:(Node *)node {
    
    if (node == NULL) {
        
        NSLog(@"Element not found");return ;
        
    } else if (data == header.data) {
        //there is only one node, so put header as NULL
        header = NULL ;
        
    } else if (node.next.data == data) {

        NSLog(@"Deleted Data = %d",data);
        node.next = node.next.next ;
        
    } else {
        
        [self popNodeWithData:data andNode:node.next];
    }
}

#pragma mark -
#pragma mark - Private methods

//create new node with data ;
- (Node *)createNewNodeWithData:(int)data {
    
    Node *_node = [[Node alloc] init];
    _node.data = data ;
    _node.next = NULL ;
    return _node ;
}

- (void)animateLabel:(UILabel *)label {
    
    [UIView animateWithDuration:1.5f animations:^{
        
        [self scaleLabel:label WithScale:1.6f andScaleY:1.6f andAlpha:1.0f];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:1.5f animations:^{
            
            [self scaleLabel:label WithScale:1.0f andScaleY:1.0f andAlpha:0.2f];
            
        } completion:^(BOOL finished) {
            
            [self animateLabel:label];
            
        }];
    }];
}

- (void)scaleLabel:(UILabel *)label WithScale:(float)scaleX andScaleY:(float)scaleY andAlpha:(float)alphaValue{
    
    label.transform = CGAffineTransformMakeScale(scaleX, scaleY) ;
    label.alpha = alphaValue ;
}

@end
