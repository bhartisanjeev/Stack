# Stack
Stack implementation using single header link list

In computer science, a stack or LIFO (last in, first out) is an abstract data type that serves as a collection of elements, with two principal operations:

    push adds an element to the collection;
    pop removes the last element that was added.

    The term LIFO stems from the fact that, using these operations, the last element "popped off" a stack in series of pushes and pops is the first element that was pushed in the sequence. This is equivalent to the requirement that, considered as a linear data structure, or more abstractly a sequential collection, the push and pop operations occur only at one end of the structure, referred to as the top of the stack.

Followings are the methods implemented in this demo

// insert element to stack
- (void)pushDataToNode:(int)data ;

//remove header node from list
- (void)pop ;

//traverse all elements of linklist
- (void)travers:(Node *)node ;

//delete any element from linklist with given data
- (void)popNodeWithData:(int)data andNode:(Node *)node ;
