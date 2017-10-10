// SAMPLE PROBLEM 3/11
clc;clear;funcprot(0);
// Given data
m=50;// kg
v_1=4;// m/s
mu_k=0.30;// The coefficient of kinetic friction 
g=9.81;// The acceleration due to gravity in m/sec^2
s=10;// m
theta=15;// degree
R=474;// N

// Calculation
U_12=((m*g)*s*sind(theta))-(mu_k*R*(s));// The total work done on the crate during the motion in J
v_2=sqrt((((1/2)*m*v_1^2)+U_12)/((1/2)*m));// The velocity of the crate in m/s
printf("\nThe velocity of the crate,v_2=%1.2f m/s",v_2);
