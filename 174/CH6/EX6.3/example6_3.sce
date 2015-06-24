// To find the maximum time 
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 6-3 in Page 144


clear; clc; close;

// Given data
R = 100*(10^3); // Value of resistance in ohm
C = 0.1*(10^-6); // The value of integrating capacitor in F
V_ref = 2; // The reference voltage in V
V_out = 10; // The maximum limit of the output in V

//Calculations
T = R*C;
printf("The integrator time constant = %0.3f s\n",T);
V_s = V_ref/T; //Unit is V/s
V = 1/V_s;
printf("Therefore the integrator output = %0.3f s/V",V)
disp('Therefore to integrate 10V');
T_max = V*V_out; //The max time the ref voltage can be integrated
printf("The time required = %0.4f s",T_max);

//Result
// The integrator time constant = 0.010 s
// Therefore the integrator output = 0.005 s/V 
// Therefore to integrate 10V   
// The time required = 0.0500 s 

