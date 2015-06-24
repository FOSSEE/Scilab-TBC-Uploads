// Scilab code Exa4.3 : : Page 178 (2011)
clc; clear;
E = 10e+06;    // Energy produced by the ion pairs, electron volts 
N = E/35;        // Number of ion pair produced
m = 10^3;        // Multiplication factor
N_t = N*m;        // Total number of ion pairs produced
e = 1.60218e-019;  // Charge of an ion, coulomb
Q = N_t*e;         // Total charge flow in the counter, coulomb
t = 10^-3;        // Pulse time, sec
R = 10^4;        // Resistance , ohm
I = Q/t;        // Current passes through the resistor, ampere
V = I*R;        // Height of the voltage pulse, volt
 printf("\nTotal number of ion pairs produced: %5.3e \nTotal charge flow in the counter : %5.3e coulomb \nHeight of the voltage pulse : %5.3e volt", N_t, Q, V);
 
// Result
// Total number of ion pairs produced: 2.857e+008 
// Total charge flow in the counter : 4.578e-011 coulomb
// Height of the voltage pulse : 4.578e-004 volt 