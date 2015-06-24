//Scilab Code for Example 4.11 of Signals and systems by
//P.Ramakrishna Rao
//Find system function and output of the system
clear;
clc;
syms a t;
for n=1:10;
h=t^(n-1)*%e^(-a*t);
H=laplace(h,t,'jw');
disp(H,'SYSTEM FUNCTION X(f)=',h,'For x(t)=');
end
