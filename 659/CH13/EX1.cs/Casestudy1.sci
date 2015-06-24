//                  Case Study: Chapter:13 ,Page No.:434
//                     1.Insertion in a sorted list

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
function [List]=insert(list1)
    global List;
    x=input("Input number to be inserted: ");//Read the number
    //find the location so that number could be placed in sorted order
    while (list1(i)(1).next~=NULL)
        if(list1(i)(1).number>=x) then
              break;
        end
        i=i+1;
    end
     key=i; 
     //Insetion at end 
    if(list1(i)(1).next==NULL & list1(i)(1).number < x) then
        list1(i+1)(1).number=x;
        list1(i+1)(1).add=i+1;
        list1(i+1)(1).next=NULL;
        list1(i)(1).next=list1(i+1)(1).add;
        List=list1;
        return;
    end
    i=1;
    while (list1(i)(1).next~=NULL)
        i=i+1;
    end
    j=i+1;
    //Key node found and insert new node or item
    while(list1(i)(1).add~=key)
        list1(i+1)(1).number=list1(i)(1).number;
        i=i-1;
    end
    list1(i+1)(1).number=list1(i)(1).number
    list1(i)(1).number=x;
    list1(j)(1).add=j;
    list1(j)(1).next=NULL;
    list1(j-1)(1).next=list1(j)(1).add;
    List=list1;
endfunction

global List;
NULL=0;i=1;
//Create the structure i.e. node
node=struct('number',0,'add',0,'next',0);
head=node;
//Calling the functions
printf("Input a sorted(ascending) list");
List=create(head);
printf("\nOriginal List: ");
print1(List);
List=insert(List);
printf("\nNew List: ");
print1(List);