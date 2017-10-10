// Example 12_11
clc;clear;funcprot(0);
//Given values
Ma_1=2;// Mach number
delta=10;// degree
P_1=75.0;// kPa
//Properties
k=1.4;// Specific heat ratio

// Calculation
theta=delta;// Deflection in degrees
beta_w=39.3;// Oblique shock angle in degrees
beta_s=83.7;// Oblique shock angle in degrees
Ma_1nw=Ma_1*sind(beta_w);// Mach Number on upstream side
Ma_1ns=Ma_1*sind(beta_s);// Mach Number on upstream side
Ma_2nw=0.8032;// Mach number
Ma_2ns=0.5794;// Mach number
P_2w=P_1*((2*k*(Ma_1nw)^2)-k+1)/(k+1);// Pressure in kPa
P_2s=P_1*((2*k*(Ma_1ns)^2)-k+1)/(k+1);// Pressure in kPa
Ma_2w=(Ma_2nw)/(sind(beta_w-theta));// Mach Number on the downstream side
Ma_2s=(Ma_2ns)/(sind(beta_s-theta));// Mach Number on the downstream side
printf('\nThe pressure on the downstream side,P_2=%0.0f kPa(weak shock) & P_2=%0.0f kPa(strong shock)\nThe Mach number on the downstream side of the oblique shock,Ma_2=%0.2f (weak shock) & Ma_2=%0.3f (strong shock)',P_2w,P_2s,Ma_2w,Ma_2s);
disp(Ma_1nw)
