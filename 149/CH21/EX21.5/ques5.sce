//error
//ques5
clc
syms t  s u
f=integ(exp(-s*t)*t/u,t,0,u)+integ(exp(-s*t),t,u,%inf);
disp(f);
