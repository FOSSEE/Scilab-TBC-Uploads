//ques4
clc
disp('definite integral');
syms x 
g=(sin(6*x))^3*(cos(3*x))^7;
f=integ(g,x,0,%pi/6);
disp(float(f));
