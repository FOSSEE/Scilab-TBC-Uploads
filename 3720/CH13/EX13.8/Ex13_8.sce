//Example 13_8
clc;clear;
// Given values
y_1=3;// m
y_2=1.5// m
a=0.25// m
b=6;// m
g=9.81// m/s^2

// Calculation
x_1=y_1/a;//The depth ratio 
x_2=y_2/a;// The contraction coefficient
//The corresponding discharge coefficient is determined from Fig. 13–38
C_d=0.47;
v=C_d*b*a*sqrt(2*g*y_1);
printf('The rate of discharge,V=%0.2f m^3/s\n',v);
