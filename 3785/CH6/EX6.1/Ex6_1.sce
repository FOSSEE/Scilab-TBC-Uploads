// Example 6_1
clc;funcprot(0);
// Given data
a=1.0;// s^-1
b=0.1;// s^-1
c=2.0;// s^-1,where a,b,c are constants
z=1;// m
mu=1.82*10^-5;// Pa s

// Calculation
tau_xz=mu*(a-(2*b*z));// The non-zero viscous stress component in Pa
tau_zx=tau_xz;// The non-zero viscous stress component in Pa
tau_yz=mu*c;// The non-zero viscous stress component in Pa
tau_zy=tau_yz;// The non-zero viscous stress component in Pa
printf("The numerical values of all the viscous stress components,tau_xz=tau_zx=%1.3e Pa & tau_yz=tau_zy=%1.2e Pa",tau_xz,tau_yz);
