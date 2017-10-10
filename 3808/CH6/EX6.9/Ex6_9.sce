//Chapter 06: Counting

clc;
clear;

function res=citycal(n) //function definition
i=n
res=1
for i=1:n-1 
res=res*i
end
return res
endfunction

num=input("Enter the number of cities:")
result=citycal(num)
mprintf("The number of possible ways to decide the path is %d ",result) 
