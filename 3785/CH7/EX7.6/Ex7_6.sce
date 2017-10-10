// Example 7_6
clc;funcprot(0);
// Given data
x=40;// Fixed distance in m
V_v=100;// Vehicular speed in m/s
C_D=1.0;// The truck drag coefficient
A=9;// The trucks frontal area in m^2
alpha_w=0.05;

// Calculation
V_w=V_v*((C_D*A)/(%pi*(2*alpha_w*x)^2));// km/h
dV=V_v-V_w;// The relative air speed in km/h
printf("\nThe relative air speed,V_v-V_w=%2.1f km/h",dV)
