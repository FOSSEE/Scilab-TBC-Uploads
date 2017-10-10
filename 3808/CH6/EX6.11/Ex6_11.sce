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

//Part A Solution
num=input("Enter the number of cards in the deck(For standard deck n=52):")
com1=input("Enter the number of cards for poker hands determination:")
com2=input("Enter the number of cards to select no of ways:")
res1=combination(num,com1)
mprintf("The number of poker hands of %d cards that can be dealt are %d ",com1,res1)
res2=combination(num,com2)
mprintf("\nThe number of ways to select %d cards from a standard deck are %d ",com2,res1)
