//Scilab Code for Example 2.6 of Signals and systems by
//P.Ramakrishna Raoclear;
clc;
clear;
syms s X x t R C V Vo;
//After solving for I(s)
//I(s)=(V-Vo)/R . 1/(s+1/RC)
X=(V-Vo)/((s+1/(R*C))*R);
disp(X,"I(s)=");
x=ilaplace(X);
disp(x,"i(t)=");
