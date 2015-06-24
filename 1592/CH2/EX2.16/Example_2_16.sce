//Scilab Code for Example 2.16 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms t y;
s=%s;
y=laplace(2*exp(-2*t)+3*exp(-3*t),t,s);
disp(y,"X(s)=");
y=(2/(s+2))+(3/(s+3));
plzr(y);
