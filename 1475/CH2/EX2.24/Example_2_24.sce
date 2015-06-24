//Example 2.24 A box contains 4 white, 3 black and 5 red ball
clc;
clear;
p1=1/3;
p2=1/6;
p3=5/12;
n=6;
probab1=(factorial(n)*(p1^3)*(p2^1)*(p3^2))/(factorial(3)*factorial(1)*factorial(2));
probab2=(factorial(n)*(p1^2)*(p2^0)*(p3^4))/(factorial(2)*factorial(0)*factorial(4));
disp(probab2,"the required probability of 2 are white and 4 are red",probab1,"the required probability of 3 are white , 1 black and 2 red",n,"No. of independent trials");

