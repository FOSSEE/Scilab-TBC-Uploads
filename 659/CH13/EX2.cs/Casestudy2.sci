//                  Case Study: Chapter:13 ,Page No.:438
//                     2.Building a Sorted List

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
         create(list1);// Create the next node
     end
     return;
endfunction
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
//Sorting of the numbers in the list
function [List]=insert_sort(list1)
    global List;
    j=1;
    while (list1(j)(1).next~=NULL)
        i=1;
        while (list1(i)(1).next~=NULL)
           if(list1(i)(1).number >list1(i+1)(1).number) then
              temp=list1(i)(1).number;
              list1(i)(1).number=list1(i+1)(1).number;
              list1(i+1)(1).number=temp;
           end
           i=i+1;
        end
        j=j+1;
    end
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
List=insert_sort(List); //Sort the list
printf("\nAfter sorting: ");
print1(List);