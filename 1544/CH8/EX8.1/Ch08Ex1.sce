// Scilab code Ex8.1: Pg 253 (2008)
clc; clear;

C = 8e-06;    // Value of capacitance of capacitor, farad
R = 0.5e+06;    // Value of series resistor, ohm
E = 200;    // Value of d.c. voltage supply, volt

// Part (a)
tau = C*R;    // Time constant of the R-C circuit while charging, s
printf("\nThe circuit time constant while charging = %1d s", tau);

// Part (b)
I_0 = E/R;    // Initial charging current through capacitor, A
printf("\nThe initial charging current through capacitor = %3d micro-ampere", I_0/1e-06);

// Part (c)
t = 4;  // Time after the supply is connected, s
v_C = 0.632*E;  // p.d. across the capacitor 4s after the supply is connected, V
v_R = E - v_C;  // p.d. across the resistor 4s after the supply is connected, V
printf("\nThe p.d. across resistor and capacitor %d s after the supply is connected = %5.1f V and %4.1f V respectively", t, v_C, v_R);

// Result
// The circuit time constant while charging = 4 s
// The initial charging current through capacitor = 400 micro-ampere
// The p.d. across resistor and capacitor 4 s after the supply is connected = 126.4 V and 73.6 V respectively 
// 
