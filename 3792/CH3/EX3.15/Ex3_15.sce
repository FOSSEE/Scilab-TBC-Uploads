// SAMPLE PROBLEM 3/15
clc;clear;funcprot(0);
// Given data
h_1=500;// km
v_1=30000;// km/h
h_2=1200;// km
R=6371;// km
g=9.81;// The acceleration due to gravity in m/sec^2

// Calculation
v_2=sqrt((v_1/3.6)^2+((2*g*(R*10^3)^2)*((10^-3/(R+h_2))-(10^-3/(R+h_1)))));
printf("\nThe velocity of the satellite as it reaches point B,v_2=%4.0f m/s (or) v_2=%5.0f km/h",v_2,v_2*3.6);
