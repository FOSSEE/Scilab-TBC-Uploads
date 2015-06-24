//Scilab Code for Example 2.15 of Signals and systems by
//P.Ramakrishna Rao
clear;
clc;
syms t y;
s=%s;
y=laplace(5*exp(-3*t),t,s);
disp(y,"X(s)=");
disp("Re(s)>-3");
y=5/(s+3);
plzr(y);

