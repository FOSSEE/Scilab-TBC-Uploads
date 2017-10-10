// SAMPLE PROBLEM 6/12
clc;funcprot(0);
// Given data
m_A=3;// kg
m=2;// kg
k=0.060;// The radius of gyration in m
k=1.2;// The spring stiffness in kN/m
F=80;// N
g=9.81;// The acceleration due to gravity in m/s^2

// Calculation
// dT_rack=3a dx
// dT_gear=0.781a dx
// dV_rack=29.4 dx
// dV_gear=9.81 dx
// dV_spring=24 dx
// Canceling dx and solving for a give
a=(80-(29.4+9.81+24))/(3+0.781);
printf("\nThe acceleration of rack A,a=%1.2f m/s^2",a);
