//Chapter 07: Discrete Probability

clc;
clear;

X=[1,2,3,4,5,6]          //possible values on a fair die
p=1/6                     //probability for any value to appear when die is rolled
Ex=0
l=length(X)
for i=1:l
    Ex=Ex+p*X(i)
end

disp(Ex,'Expected value of X')
