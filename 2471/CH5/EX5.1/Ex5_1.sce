clear ;
clc;
// Example 5.1
printf('Example 5.1\n\n');
printf('Page No. 110\n\n');

// given
Q = 0.30*10^6;// Heat transfer rate in W/sq.m
T1 = 540;// Mean gas temperature in degree celcius
T2 = 207;// Steam temperature in degree celcius
K_tube = 40;// Thermal conductivity of tube in W/m-K
K_scale = 2.5 ;// Thermal conductivity of scale in W/m-K
L_tube = 4*10^-3;// Length of tube in m

// By Fourier equation and neglecting curvature effect, Q/A = [(T1- T2)/((L_tube/K_tube)+(L_scale/K_scale))]
L_scale = K_scale*(((T1-T2)/Q)-(L_tube/K_tube));
printf('The thickness of scale is %.4f m',L_scale)
