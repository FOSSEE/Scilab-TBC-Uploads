//Example 10 // Frequencies
clc;
clear;
close;
//given data :
l=2;// in m
v=3560;// in m/s
r=0.004;// in m
k=r/2;
v1=%pi*v*k*3.011^2/(8*l^2);
disp(v1,"The frequency,v1(Hz) = ")
v2=%pi*v*k*5^2/(8*l^2);
disp(v2,"The frequency of first overtone,v2(Hz) = ")
v3=%pi*v*k*7^2/(8*l^2);
disp(v3,"The frequency of second overtone,v3(Hz) = ")
