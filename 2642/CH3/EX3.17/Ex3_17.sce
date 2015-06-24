// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.17


clc;clear; // clears the console and command history 

// Given data
S_b1 = 100    // base apparent power
V_bT11 = 220  // voltage of 1st transformer in kV
V_bT12 = 132  // voltage of 1st transformer in kV
X_T1 = 0.02    // impedance of 1st transformer in pu
S_b2 = 50    // base apparent power
V_bT21 = 132  // voltage of 2nd transformer in kV
V_bT22 = 66   // voltage of 2nd transformer in kV
X_T2 = 0.05   // impedance of 2nd transformer in pu
X_L = 4       // line impedance in ohm
P = 50        // power absorded in MW
pf = 0.6      // lagging power factor from transmission line
Z_p = 0.32*%i     //Reactance of transformer in ohm

// caclulations 
S_b = S_b1                           //Base power(MW)
V_b = V_bT11                           //Base voltage(kV)
a = V_bT11/V_bT12                                // turn ratio for 1st transformer
Vb_line = (V_bT11/a)               // base voltage of line in kV
Zb_line = Vb_line^2/S_b1                         // base impedance of line in ohm
Xpu_line = X_L/Zb_line                           // per unit reactance of line
Xpu_T1 = X_T1*(V_bT11/V_b)^2*(S_b/S_b1)  // 1st grid transformer ,the per unit reactance
Vb_load = (V_bT12/(V_bT12/V_bT22))               // load side base voltage in kV
Xpu_load = X_T2*(V_bT22/Vb_load)^2*(S_b/S_b2)       // second load transformer ,the per  unit reactance
I_b = S_b*1000/(sqrt(3)*Vb_load)                      // base current
I_L = S_b2*1000/(sqrt(3)*V_bT22*pf)         // actualcurrent in load in A
I_Lpu = I_L/I_b                                 // per unit value of the load
V_L = V_bT22/V_bT22     //per unit value of the voltage at the load terminal(bus4)
V_gb = I_Lpu*exp(%i*acos(pf))*Z_p + 1 // per unit value of bus voltage 
V_gba = abs(V_gb)*V_bT11 // actual value of grid to bus voltage 

// display the result 
disp("Example 3.17 solution");
printf(" \n Actual value of grid to bus voltage \n V_gba = %.2f kV \n", V_gba);
