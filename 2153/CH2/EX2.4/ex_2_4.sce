//Example 2.4 : velocity
clc;
clear;
close;
//given data :
format('v',8)
h=6.626*10^-34;
e=1.6*10^-19;
epsilon_o=8.825*10^-12;
n=1;
Z=1;
vn=(Z*e^2)/(2*epsilon_o*n*h);
disp(vn,"velocity,vn(m/s) = ")
