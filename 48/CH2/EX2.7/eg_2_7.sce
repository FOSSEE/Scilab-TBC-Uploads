clc;
clear;
//n1=input("enter the no of elements in the 1st set");
//for i=1:1:n1
//    s1(i)=input("enter the elements of 1st set:");
//end
n1=3;
s1=['a1' 'a2' 'a3'];        //set A
//n2=input("enter the no of elements in the 2nd set");
//for i=1:1:n2
//    s2(i)=input("enter the elements of 2ns set:");
//end
n2=2;
s1=['b1' 'b2'];        //set B
//N=input("enter the pairs in the relation which you want to check whether is a function");
//for i=1:1:N
//    for j=1:1:2
//       r(i,j)=input("enter the elements in the relation:");
//    end
//end
N=3;
r=['a1' 'b1';'a2' 'b2';'a2' 'b1'];        //Realtion r
for i=1:1:N            //checks whether the relation is function or not
    for j=i:1:N
        if(r(i,1)==r(j,1) & i~=j)
            disp("the relation is not a function");
            abort;
         end
    end
end
disp("the realtion is a fucntion");