// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-39

clear; clc; close; // Clear the work space and console.

// Given data
I_L = 1 ; // Load current in kA
V_m = 750 ; // Peak voltage in kV

// Calculations
// case a
V_L = (V_m)/sqrt(2); // Max. allowable Vrms in kV that may be applied to the lines using ac

// case b
S_T_ac = sqrt(3)*V_L*I_L ; // Total 3-phase apparent power in MVA

// case c
I_rms = I_L ; // rms value of load current in kA
I_dc =I_rms*sqrt(2); // Max.allowable current in kA that can be delivered by dc transmission

// case d
V_dc = V_m ; // dc voltage in kV
S_T_dc = V_dc*I_dc ; // Total dc apparent power delivered by two lines in MVA

// case e
S_ac_line = S_T_ac / 3 ; // Power per ac line

// case f
S_dc_line = S_T_dc / 2 ; // Power per dc line

// Display the results
disp("Example 14-39 Solution : ");

printf(" \n :a Max. allowable Vrms in kV that may be applied to the lines using ac :");
printf(" \n    V_L = %.1f kV \n ",V_L);

printf(" \n :b Total 3-phase apparent power :\n    S_T = %.1f MVA \n",S_T_ac);

printf(" \n :c Max.allowable current in kA that can be delivered by dc transmission :");
printf(" \n    I_dc = %.3f kA \n ",I_dc);

printf(" \n :d Total dc apparent power delivered by two lines :\n    S_T = %.1f MVA\n",S_T_dc);

printf(" \n :e Power per ac line :\n    S/ac line = %.1f MVA/line \n",S_ac_line);

printf(" \n :f Power per dc line :\n    S/dc line = %.1f MVA/line \n",S_dc_line);
