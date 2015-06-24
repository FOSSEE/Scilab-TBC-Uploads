// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-24

clear; clc; close; // Clear the work space and console.

// Given data(From Ex.14-23)
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
// Preliminary calculations
S_b = S ; // Base voltage in kVA
Psc = 8.2 ; // Power measured in kW during SC-test
P_Cu_pu = Psc / S_b ; // per unit value of P_Cu at rated load

Poc = 1.8 ; // Power measured in kW during OC-test
P_CL_pu = Poc / S_b ; // per unit value of P_CL at rated load

// case a
LF1 = 3/4 ; // Load fraction of rated load 
PF1 = 1 ; // unity Power factor
eta_pu_LF1 = (LF1*PF1) / ((LF1*PF1) + P_CL_pu + (LF1)^2*P_Cu_pu ) * 100 ; // Efficiency at rated load,unity PF

// case b
LF2 = 1/4 ; // Load fraction of rated load 
PF2 = 0.8 ; // 0.8 lagging PF
eta_pu_LF2 = (LF2*PF2) / ((LF2*PF2) + P_CL_pu + (LF2)^2*P_Cu_pu ) * 100 ; // Efficiency at 1/4 rated load,0.8 lagging PF

// case c
LF3 = 5/4 ; // Load fraction of rated load 
PF3 = 0.8 ; // 0.8 leading PF
eta_pu_LF3 = (LF3*PF3) / ((LF3*PF3) + P_CL_pu + (LF3)^2*P_Cu_pu ) * 100 ; // Efficiency at r1/4 rated load,0.8 leading PF


// Display the results
disp("Example 14-24 Solution : ");

printf(" \n    Efficiency(pu) :\n ");
printf(" \n a: η_pu at %.2f rated-load = %.2f percent \n",LF1,eta_pu_LF1);

printf(" \n b: η_pu at %.2f rated-load = %.2f percent \n",LF2,eta_pu_LF2);

printf(" \n c: η_pu at %.2f rated-load = %.2f percent \n",LF3,eta_pu_LF3);
