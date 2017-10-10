//Chapter 07: Discrete Probability

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

n1=input('Enter the total numbers: ')
n2=input('Enter the amount of numbers to pick correctly to win the prize:')
win=combination(n1,n2)
p_win=1/win
mprintf('The total no of ways to choose %d numbers out of %d number is: %d',n1,n2,win)
mprintf('\nThe probability of a winning combination is')
disp(p_win)
