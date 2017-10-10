// SAMPLE PROBLEM 3/2
clc;clear;funcprot(0);
// Given data
m=200;// The mass of the small inspection car in kg
T=2.4;// kN
x=12;// adjacent side
y=5;// opposite side
r=13;// hypotenuse side
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
W=(m*g)/1000;// The weight in N
// SigmaF_y=0;
P=(T*(y/r))+(W*(x/r));// The total force exerted by the supporting cable on the wheels in N
// SigmaF_x=ma_x
a=((T*10^3*(x/r))-(W*10^3*(y/r)))/m;// The acceleration of the car in m/s^2
printf("\nThe total force exerted by the supporting cable on the wheels,P=%1.2f kN \nThe acceleration of the car,a=%1.2f m/s^2",P,a);
