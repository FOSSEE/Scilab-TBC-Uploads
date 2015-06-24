//                 Example 13.3
//Write a program to create a linear linked list interactively 
//and print the list and total number of items in the list.

funcprot(0);
NULL=0;i=1;
//Create the list 
function [List]=create(list1)
    global List;
   //Create the current node in the list
    list1.number=input("Input a number(Type -999 to end); ")           
    if list1.number==-999 then
        list1.next=NULL;
        list1.add=NULL;
     else
         //Create the next node in the list
         list1.add=list1.add+1;
         list1.next=NULL;
         List(i)=list1;
         if(i==1) then
             
         else
             List(i-1).next=List(i).add
         end
         i=i+1;
       create(list1); //Call create() function 
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
//Function to count the number of items in the list
function []=count(list1)
    global c;
     if list1(i)(1).next==NULL then
         return;
     else
        i=i+1;
        c=i;
        count(list1);
     end
     return;
endfunction
//Create the structure i.e. node  
node=struct('number',0,'add',0,'next',0);
head=node;
global List;
//Calling the functions
List=create(head);
print1(List);
global c;
c=1;
count(List);
//Print the total number of items
printf("\nNumber of items = %d",c);