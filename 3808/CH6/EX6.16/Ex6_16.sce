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

num1=input("Enter the number of indistinguishable bins:")
num2=input("Enter the number of distinguishable bins:")

//Using formula C(n+r-1,n-l) we obtain

comb=combination(num2+num1-1,num2-1)

mprintf("There are %d number of ways to place %d objects into %d distinguishable boxes",comb,num1,num2)
