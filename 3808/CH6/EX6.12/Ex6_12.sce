//Chapter 06: Counting

clc;
clear;

function result=combination(n,r) //function definition
i=n
num=1
denominator=1
l=(n-r)+1
u=n
for i=l:u //to compute the value of the numerator
num=num*i
end
for j=1:r //to compute the value of the denominator
denominator=denominator*j
end
result=num/denominator 
return result
endfunction

num=input("Enter the total number of members in a team:")
com=input("Enter the number of players:")
res=combination(num,com)
mprintf("The number of combinations are %d ",res) 
