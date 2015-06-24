//Scilab Code for Example 2.1 of Signals and systems by
//P.Ramakrishna Rao
//Laplace Transform
clear;
clc;
syms t s X
X=laplace(exp(-3*t)*cos(2*%pi*100*t),t,s)
disp('On Simplification')
//After Simplifying the above equation
X=(s+3)/((s+3)^2 + (200*%pi)^2);
disp("Re(s)>-3",X,"X(s)");
//Re(s)>-3
