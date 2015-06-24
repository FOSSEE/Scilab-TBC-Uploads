//Finding capacitance
//Example 4.2(pg 110)
clc
clear
n=9;
Ko=8.854*10^-12;
K=5;
A=12*10^-4;
d=2*10^-4;

C=(n-1)*Ko*K*A/d
printf('Thus the capacitance is %e F',C);
//The Answer in the Textbook has a calculation error, hence it doesn't match the answer here.
