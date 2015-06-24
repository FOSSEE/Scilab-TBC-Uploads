//Example 7.6 : strain 
clc;
clear;
close;
format('v',10)
//given data :
b=44.5*10^3;//force
E=1.1*10^5;// in N/mm^2
A=15.2*19.1// in mm^2
epsilon=b/(A*E);
disp(epsilon,"strain,epsilon (mm) = ")
