//Example 13_2
clc;clear;
// Given values
b=0.8;// Width in m
y=0.52;// Flow depth in m
g=9.81;// m/s^2
theta=60;// Trapezoid angle  in degree
alpha=0.3;// Bottom slope angle
//Properties
n=0.030;// The Manning coefficient for an open channel with weedy surfaces

//Calculation
A_c=(y*(b+(y/tand(theta))));//The cross-sectional area in m^2
p=b+((2*y)/sind(theta));// Perimeter in m
R_h=A_c/p;// Hydraulic radius of the channel
S_0=tand(alpha);//The bottom slope of the channel
a=1;// m^(1/3)/s
v=(a/n)*(A_c*R_h^(2/3)*S_0^(1/2));// The flow rate through the channel in m^3/s
printf('The flow rate through the channel is determined from the Manning equation to be,v=%0.2f m^3/s\n',v);
//The flow rate for a bottom angle of 1° can be determined by using S_0= tan alpha=tan 1°
alpha_1=1;// degree
S_01=tand(alpha_1);// The bottom slope of the channel
v=(a/n)*(A_c*R_h^(2/3)*S_01^(1/2));// The flow rate through the channel in m^3/s
printf('The flow rate for a bottom angle of 1°,v=%0.1f m^3/s\n',v);
