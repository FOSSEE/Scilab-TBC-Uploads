//Example 9 // Frequency
clc;
clear;
close;
//given data :
l=1.2;// in m
v=5150;// in m/s
d=0.006;// in m
k=d/sqrt(12);
v1=%pi*v*k*3.011^2/(8*l^2);
disp(v1,"The frequency,v1(Hz) = ")
