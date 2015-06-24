// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 3 : TRANSFORMER AND PER UNIT SYSTEM
// Example : 3.9


clc;clear; // clears the console and command history 

// Given data
P_i = 350   // iron loss of transformer in W
P_cu = 650  // copper loss of transformer in W
kVA = 30    // kVA ratingss of transformer
pf = 0.6    // power factor

// caclulations 
P_tloss = (P_i+P_cu)*10^-3   // total full load loss in kW
P_out = kVA*pf               // o/p power at full load in kW
P_in = P_out+P_tloss         // i/p power at full load
n_1 = (P_out/P_in)*100       // efficiency at full load
kVA_out = kVA*sqrt(P_i/P_cu) // o/p kVA corresponding to maximum efficiency 
P_01 = kVA_out*pf            // o/p power in W
P_tloss1 = 2*P_i             // maximum efficiency iron loss=copper loss in W
P_in1 = P_01+P_tloss1*10^-3  // i/p power in kW
n_2 = (P_01/P_in1)*100       // efficiency

// display the result 
disp("Example 3.9 solution");
printf(" \n Efficiency at full load \n n_1 = %.2f percent \n", n_1);
printf(" \n Out put power \n P_01 = %.1f kW \n", P_01);
printf(" \n Efficiency \n n_2 = %.2f percent \n", n_2);

