// Scilab Code Ex10.2: Page-10.5 (2004)
clc;clear;
Tc = 7.18;   // Critical temperature, K
r = 1e-003; // diameter of wire, m
Ho = 6.5e+004;    //  Critical field at zero kelvin, A/m
T = 4.2;  // temperature at which filed being calculated, K
Hc = Ho*[1-(T/Tc)^2];
ic = %pi*r*Hc;    //  critical current , A
printf("\nThe Critical field  = %e A/m" , Hc);
printf("\nThe Critical current = %f A" , ic);

// Result
// The Critical field  = 4.275855e+04 A/m
//  The Critical current = 134.329954 A 
