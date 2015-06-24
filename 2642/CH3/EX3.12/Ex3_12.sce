// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.12


clc;clear; // clears the console and command history 

// Given data
kVA = 25    // kVA ratings of transformer
V1 = 2200   // primary side voltage in V
V2 = 220    // secondary side voltage in V
V_1 = 40    // voltage at high voltage side in V
I_1 = 5     // current at high voltage side in A
P = 150     // power at high voltage side in W

// caclulations 
Z_01 = V_1/I_1         // reactance to primary sidec in ohm
R_01 = P/I_1^2         // resistance to primary side in ohm
phi = acosd(R_01/Z_01) // power factor angle
X_01 = Z_01*sind(phi)  // impedance to primary side in ohm
a = V1/V2              // turn ratio
Z_02 = Z_01/a^2        // reactance to secondary side in ohm
R_02 = R_01/a^2        // resistance to secondary side in ohm
X_02 = X_01/a^2        // impedance to secondary side in ohm
I_2 = kVA*10^3/V2      // secondary side current in A
E_2 = V2+I_2*Z_02      // secondary induced voltage in V
VR = ((E_2-V2)/V2)*100 // voltage regulation

// display the result 
disp("Example 3.12 solution");
printf(" \n Resistance to primary side \n Z_01 = %.2f ohm \n", Z_01);
printf(" \n Resistance to primary side \n R_01 = %.1f ohm \n", R_01);
printf(" \n Impedance to primary side \n X_01 = %.2f ohm \n", X_01);
printf(" \n Reactance to secondary side \n Z_02 = %.2f ohm \n", Z_02);
printf(" \n Resistance to secondary side \n R_02 = %.2f ohm \n", R_02);
printf(" \n Impedance to secondary side \n X_02 = %.3f ohm \n", X_02);
printf(" \n oltage regulation \n VR = %.0f percent \n", VR);

