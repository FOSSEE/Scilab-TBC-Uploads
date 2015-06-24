//                    Example 13.5
//Write a program/function to delete a specified node.

funcprot(0);
//Create the list
function [List]=create(list1)
    global List;
    // Create the current node
    list1.number=input("Input a number(Type -999 to end); ")//scanf("%d");
    if list1.number==-999 then
        list1.next=NULL;
        list1.add=NULL;
     else
         list1.add=list1.add+1;
         list1.next=NULL;
         List(i)=list1;
         if(i==1) then
             
         else
             List(i-1).next=List(i).add
         end
         i=i+1;
         create(list1);// Create the next node
     end
     return;
endfunction
//Function to print the numbers of list
function []=print1(list1)
     if list1(i)(1).next~=NULL then
        printf("%d--->",list1(i)(1).number);//Print current item
        i=i+1;
        if list1(i)(1).next==NULL then
             printf("%d",list1(i)(1).number);
        end
        print1(list1);//Move to next item
     end
     return;
endfunction
//Function to delete the specified node
function [List]=delet(list1)
    key=input("Value of item number to be deleted?");//Read value of key
    //Find and delete the key node
    while(list1(i)(1).number~=key) then
        if list1(i)(1).next==NULL then
            printf("Item not found in the list");
            return;
        end
        i=i+1;
     end
     while(list1(i).next~=NULL)
         list1(i)(1).number=list1(i+1)(1).number;
         i=i+1;
     end
     list1(i-1)(1).next=NULL;
     List=list1;
endfunction
global List;
NULL=0;i=1;
//Create the structure i.e. node
node=struct('number',0,'add',0,'next',0);
head=node;
//Calling the functions
List=create(head);
printf("\nOriginal List: ");
print1(List);
List=delet(List);
printf("\nAfter deletion List is: ");
print1(List)