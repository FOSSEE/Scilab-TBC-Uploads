//Scilab Code for Example 2.2 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms s X;
//After solving for I(s)
//I(s)=2/(s+1)
X=2/(s+1)
x=ilaplace(X);
disp(x,"i(t)=")
