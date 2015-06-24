// Scilab code Ex9.1: Pg 277 (2008)
clc; clear;
// Part (a)
V_Z = 9.1;    // Zener voltage of zener diode, volt
P_Z = 0.5;    // Power rating of zener diode at V_Z, W
r_Z = 1.5;    // Slope resistance of zener diode, ohm
V = 12;    // Nominal value of input voltage, volt
R_L = 2.5e+03;    // Load resistance across zener diode, ohm
I_Z = P_Z/V_Z*1e+03;    // Zener current, mA
I_S = I_Z;    // Current through series resistor, mA
V_S = V - V_Z;    // Voltage drop across series resistor, volt
R_S = V_S/I_S*1e+03;    // Value of series resistance, ohm
P_max = (I_S*1e-03)^2*R_S;    // Maximum power rating of series resistance, W
printf("\nThe value of series resistance  = %5.2f ohm", R_S);
printf("\nThe value of maximum power rating of series resistance  = %4.2f W", P_max);
printf("\n(a) The suitable value of R_S should be 54 ohm, 0.25 W");

// Part (b)
V_o = V_Z;    // Output voltage across zener, volt
I_L = V_o/R_L*1e+03;    // Load current, mA
I_Z = I_S - I_L;    // Zener current, mA
printf("\n(b) The value of diode current with load resistance across zener = %5.2f mA",I_Z );

// Part (c)
V = 12 - (0.1*12);    // Final value of input voltage after falling below 12 V, volt
R_S = 56;    // Standard value of series resistance, ohm
I_S = (V - V_Z)/R_S*1e+03;    // Current through series resistance, mA
I_Z = I_S - I_L;    // Resulting diode current, mA
delta_I_Z = 51.36 - I_Z;    // Change in zener current, mA
delta_V_Z = delta_I_Z*1e-03*r_Z;    // Change in zener voltage, V
change = delta_V_Z/V_Z*100;    // %age change in zener voltage

printf("\n(c) The percentage change in the p.d. across the load = %4.2f percent",change);

// Result
// The value of series resistance  = 52.78 ohm
// The value of maximum power rating of series resistance  = 159340.66 W 
// The suitable value of R_S should be 54 ohm, 0.25 W   
