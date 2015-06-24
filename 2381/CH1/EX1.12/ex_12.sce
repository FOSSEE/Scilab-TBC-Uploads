//Example 12 // Rotational inertia
clc;
clear;
close;
//given data :
M=0.1;// in m
l=0.1;// in m
I1=M*l^2/12;// in kg-m^2
T1=2;// in s
T2=6;// in s
I2=(I1*T2^2)/T1^2;
disp(I2,"Rotational inertia,I2(kg.m^2) = ")
