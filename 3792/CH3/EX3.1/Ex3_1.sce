// SAMPLE PROBLEM 3/1
clc;clear;funcprot(0);
// Given data
m=75;// kg
T=8300;// The tension in the hoisting cable in N
g=9.81;// The acceleration due to gravity in m/s^2
m_ems=750;// The total mass of the elevator, man and scale in kg
t_0=0;// s
t_1=3;// s 

// Calcaulation
// SigmaF_y=m*a_y;
a_y=(T-(m_ems*g))/m_ems;// m/s^2
// SigmaF_y=m*a_y;
R=((m*a_y)+(m*g));// N
v=(1.257*t_1)-(1.257*t_0);// m/s
printf("\nThe equal and opposite reaction,R=%3.0f N \nThe upward velocity of the elevator,v=%1.2f m/s",R,v);
