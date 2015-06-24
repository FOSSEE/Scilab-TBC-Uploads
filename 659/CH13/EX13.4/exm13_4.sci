//                    Example 13.4
//Write a function to insert a given item before a specified node known as 
//key node.

funcprot(0);
//Create the list
function [List]=create(list1)
    global List;
   // Create the current node
    list1.number=input("Input a number(Type -999 to end); ");
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
       create(list1);// Creates the next node
     end
     return;
endfunction
//Function to insert the item before the specified key node
function [List]=insert(list1)
    x=input("Value of new item?");
    printf("Value of key item?(Before which you want to insert?)");
    key=scanf("%d");
    while list1(i)(1).next~=NULL
            i=i+1;
     end
     j=i+1;
     //Find the key node and insert the new node
     while(list1(i)(1).number~=key)
         list1(i+1)(1).number=list1(i)(1).number;
         i=i-1;
         if(i==0) then
             printf("Item not Found");
             return;
         end
      end
      list1(i+1)(1).number=list1(i)(1).number
      list1(i)(1).number=x; //Inset the new node before the key node
      list1(j)(1).add=j;
      list1(j)(1).next=NULL;
      list1(j-1)(1).next=list1(j)(1).add;
      List=list1;
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
global List;
NULL=0;i=1;
//Create the structure i.e. node  
node=struct('number',0,'add',0,'next',0);
head=node;
//Calling the functions
List=create(head);
printf("\nOriginal List: ");
print1(List);
List=insert(List);
printf("\nNew List: ");
print1(List);