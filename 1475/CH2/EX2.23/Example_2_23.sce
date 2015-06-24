//Example 2.23 A dice is rolled 6 times
clc;
clear;
p=1/6;
n=6;
x=1;
probab=(factorial(n)*p*p*p*p*p*p)/(factorial(x)*factorial(x)*factorial(x)*factorial(x)*factorial(x)*factorial(x));
disp(probab,"the required probability",n,"No. of independent trials");
