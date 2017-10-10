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

a=permutation(5,3)//function call
b=permutation(5,5)//function call

mprintf("The number of ways to select 3 students from a group of 5 students to line up for a picture is %d",a) 
mprintf("\nThe number of ways to select 5 students from a group of 5 students to line up for a picture is %d",b) 
