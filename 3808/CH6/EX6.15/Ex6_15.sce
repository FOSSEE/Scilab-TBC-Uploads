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

fac=1
nc=52//no of cards in a standard deck
num1=input("Enter the number of cards to distribute:")
num2=input("Enter the number of players:")
for i=1:num2
    fac=fac*combination(nc,num1)
    nc=nc-num1
end

mprintf("The total number of ways to deal %d players %d cards each is",num2,num1)
disp(fac) 
