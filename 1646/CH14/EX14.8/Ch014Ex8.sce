// Scilab code Ex14.8 : Pg:723(2011)
clc;clear;
I = 55e-03;     // Forward current through Si diode, A
V = 3;          // Forward bias across Si diode, V
eta = 2;    // Ideality factor for Si diode
R_dc = V/I;     // Static diode resistance, ohm
R_ac = 0.026*eta/I;    // Dynamic diode resistance, ohm
printf("\nThe static diode resistance = %4.1f ohm", R_dc);
printf("\nThe dynamic diode resistance = %5.3f ohm", R_ac);

// Result
// The static diode resistance = 54.5 ohm
// The dynamic diode resistance = 0.945 ohm 
