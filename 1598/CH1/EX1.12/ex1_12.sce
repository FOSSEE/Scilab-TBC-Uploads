clc;
g=9.8;   //gravitational constant
m=50;   //mass in kg
l=0.2;   //length in m
T=0.6;    //time period
k=(m*g)/l;   //calculating constant
m=2450*((T/(2*(%pi)))^2);  //calcualting mass using given time period
disp(m,"Mass of body in kg = ");  //displaying result