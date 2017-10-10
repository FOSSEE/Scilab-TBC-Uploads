// SAMPLE PROBLEM 3/4
clc;clear;funcprot(0);
// Given data
m=10;// The mass in kg
v=2;// The speed in m/s
R=8;// N

// Calculation
k=R/v^2;// N.s^2/m^2
// SigmaF_x=ma_x;
v_0=v;// m/s
v=v_0/2;// m/s
t=((1/v)-(1/2));// The time in s
t_0=0;// s
t_1=2.5;// s
x=integrate('10/(5+(2*t))','t',t_0,t_1);
printf("\nThe corresponding travel distance,x=%1.2f m",x);
