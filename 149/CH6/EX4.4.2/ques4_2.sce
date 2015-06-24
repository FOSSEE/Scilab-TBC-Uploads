//ques4
clc
disp('definite integral');
syms x 
g=x^4*(1-x^2)^(3/2);
f=integ(g,x,0,1);
disp(float(f));
