// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-23

clear; clc; close; // Clear the work space and console.

// Given data
V_1 = 2300 ; // Primary voltage in volt
V_2 = 230 ; // Secondary voltage in volt
S = 500 ; // Power rating of the transformer in kVA
f= 60 ; // Frequency in Hz

// Open circuit test data
V_oc = 208 ; // Open circuit voltage in volt
I_oc = 85 ; // Open circuit current in A
P_oc = 1800 ; // Power measured in W

// Short circuit test data
V_sc = 95 ; // Short circuit voltage in volt
I_sc = 217.4 ; // Short circuit current in A
P_sc = 8200 ; // Power measured in W

// Calculations
// case a
S_b = S ; // Base voltage in kVA
Psc = 8.2 ; // Power measured in kW during SC-test
P_Cu_pu = Psc / S_b ; // per unit value of P_Cu at rated load

// case b
Poc = 1.8 ; // Power measured in kW during OC-test
P_CL_pu = Poc / S_b ; // per unit value of P_CL at rated load

// case c
PF = 1 ; // unity Power factor
eta_pu = PF / (PF + P_CL_pu + P_Cu_pu ) * 100 ; // Efficiency at rated load,unity PF

// case d
// subscript d for PF and eta_pu indicates case d
PF_d = 0.8 ; // 0.8 lagging Power factor
eta_pu_d = PF_d / (PF_d + P_CL_pu + P_Cu_pu ) * 100 ; // Efficiency at rated load,unity PF

// case e
LF = sqrt(P_CL_pu / P_Cu_pu); // Load fraction producing max.efficiency

// case f
eta_pu_max = (LF*PF) / ( (LF*PF) + 2*(P_CL_pu) ) * 100 ; // Maximum efficiency at unity PF load

// case g
eta_pu_max_g = (LF*PF_d) / ( (LF*PF_d) + 2*(P_CL_pu) ) * 100 ; // Maximum efficiency at 0.8 lagging PF load


// Display the results
disp("Example 14-23 Solution : ");

printf(" \n a: Per unit copper loss at rated load :");
printf(" \n    P_Cu(pu) = %.4f p.u = R_eq(pu)\n",P_Cu_pu);

printf(" \n a: Per unit core loss at rated load :");
printf(" \n    P_CL(pu) = %.4f p.u \n",P_CL_pu);

printf(" \n c: Efficiency at rated load,unity PF :\n    η_pu = %.2f percent \n",eta_pu);

printf(" \n c: Efficiency at rated load,0.8 lagging PF :\n    η_pu = %.2f percent \n",eta_pu_d);

printf(" \n e: Load fraction producing max.efficiency :\n    L.F = %.3f \n ",LF );

printf(" \n f: Maximum efficiency at unity PF load :\n    η_pu(max) = %.2f percent \n",eta_pu_max);

printf(" \n g: Maximum efficiency at 0.8 lagging PF load :\n    η_pu(max) = %.2f percent \n",eta_pu_max_g);

printf(" \n h: All efficiency values are identical to those computed in solution to Ex.14-21. \n");

printf(" \n i: Per-unit method is much simpler and less subject to error than conventional method.");
