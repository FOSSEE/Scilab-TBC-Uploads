//Chapter 06: Counting

clc;
clear;

function res=permutation(n,r) //function definition
i=n
res=1
l=(n-r)+1
u=n
for i=l:u //computing the permutation
res=res*i
end
return res
endfunction

num=input("Enter the number of people:")
perm=input("Enter the number of prizes:")
result=permutation(num,perm)
mprintf("The number of ways to decide the prize winners is %d ",result) 
