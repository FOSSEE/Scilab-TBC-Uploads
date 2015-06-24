// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.8
clc;clear; // clears the console and command history 

// Given data
P_i = 1   // iron loss of transformer in kW
P_cu = 2  // copper loss of transformer in kW
kVA = 200 // kVA ratingss of transformer
pf = 0.95 // power factor

// caclulations 
P_cu1 = (3/4)^2*P_cu   // copper loss at 1/2th of full load in kW
P_cu2 = (1/2)^2*P_cu   // copper loss at 1/2th of full load in kW
P_01 = (3/4)*kVA*P_i   // o/p power at 3/4 full load and unity power factor in kW
P_in1 = P_01+P_i+P_cu1 // i/p power at 3/4 full load and unity power factor in kW
n_1 = (P_01/P_in1)*100 // efficiency at 3/4 full load and unity power factor
P_02 = (1/2)*kVA*pf   // o/p power factor at1/2 full load and 0.95 power factor in kW
P_in2 = P_02+P_i+P_cu2 // i/p power at 1/2 full load and 0.95 power factor in kW
n_2 = (P_02/P_in2)*100 // efficiency at 1/2 full load and 0.95 power factor

// display the result 
disp("Example 3.8 solution");
printf(" \n Efficiency at 3/4 full load and unity power factor \n n_1 = %.2f percent \n", n_1);
printf(" \n Efficiency at 1/2 full load and 0.95 power factor \n n_2 = %.2f percent \n", n_2);

