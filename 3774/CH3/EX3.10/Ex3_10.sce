// exa 3.10 Pg 71

clc;clear;close;

// Given Data
d=4;// cm
M=15000;// N.cm
Syt=20000;// N/cm.sq.

printf('\n (i) Maximum Principal Stress Theory-')
z=%pi*d**3/32;// cm.cube.
sigma_b=M/z;// N/cm.sq.
T=poly(0,'T')
tau=16*T/(%pi*d**3);// N/cm.sq.
//sigma1=(1/2)*(sigma_b+sqrt(sigma_b**2+4*tau**2)) // Maximum principal stress
//sigma1=(sigma_b/2+sqrt(sigma_b**2/4+tau**2)) // on solving
//tau=sqrt((sigma1-sigma_b/2)**2-sigma_b**2/4)
sigma1=Syt;// N/cm.sq.
T=sqrt((sigma1-sigma_b/2)**2-sigma_b**2/4)*(%pi*d**3)/16;// N.cm.
printf('\n Maximum value of torque, T = %.f N.cm.',T)

printf('\n (ii) Maximum Shear Stress Theory')
tau_d=0.5*Syt;// N.cm.
//Te=sqrt(M**2+T**2)=(%pi/16)*d**3*tau_d
T=sqrt(((%pi/16)*d**3*tau_d)**2-M**2);// N.cm.
printf('\n Maximum value of torque, T = %.f N.cm.',T)
// Answer in the textbook is not accurate.
