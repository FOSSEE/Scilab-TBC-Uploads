// Theory and Problems of Thermodynamics
// Chapter 1
// Basic Concepts
// Example 12

clear ;clc;

//Given data
V1 = 0.1        //initial volume in m^3
P1 = 200        //initial pressure in kPa
Pa = 100        //ambient atmosphere pressure in kPa
V2 = 0.2        //final volume in m^3
P2 = 600        //final pressure in kPa

//Calculate work done by gas
// force balance at any instance gives
// W = integrate('P','V',1,2)       where P = Pa + K*(V-V0)/(A^2)
// W = integrate('Pa + K*(V-V0)/(A^2)','V',1,2)
// W = Pa*(V2-V1) + K*((V2-V0)^2 - (V1-V0)^2)/(2*A^2)
// W = Pa*(V2-V1) + K*(V2-V1)*((V2-V0) + (V1-V0))/(2*A^2)
// W = (V2-V1) * (Pa + (P2-Pa+P1-Pa)/2)

W = (V2 - V1)*(P1 + P2)/2   //work done by gas in kJ

// Results
mprintf('Work done by gas = %2.0f kJ', W)
