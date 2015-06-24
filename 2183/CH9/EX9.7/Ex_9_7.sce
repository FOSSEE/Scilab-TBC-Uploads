//Example 9.7// cavity gain
clc;
clear;
close;
x=0.5;//
y=(1-(sqrt(x)))/(1+sqrt(x));//
g=(y/(1-y)^2);//
disp("cavity gain is "+string(g)+"/(sqrt(R1*R2))")
