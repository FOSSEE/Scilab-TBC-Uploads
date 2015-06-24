//Scilab Code for Example 2.19 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms t y;
s=%s;
y=laplace(exp(-t)-exp(2*t),t,s);
disp(y,"X(s)=");
y=(1/(s+1))-(1/(s-2));
plzr(y);
