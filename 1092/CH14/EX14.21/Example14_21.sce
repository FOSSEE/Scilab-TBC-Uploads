// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-21

clear; clc; close; // Clear the work space and console.

// Given data(from Ex.14-18)
V_sc = 50 ; // Short circuit voltage in volt
V_1 = 2300 ; // Rated primary voltage in volt


// Preliminary data before tabulating

// from ex.14-20
P_c = 1.8 ; // core losses in kW
P_k = 1.8 ; // fixed losses in kW 
P_cu_rated = 8.2 ; // Rated copper loss in kW

// given rating
kVA = 500 ; // Power rating in kVA
PF = 1 ; // power factor
P_o = kVA * PF ; // full-load output at unity PF in kW

// Calculations
// case a
LF1 = 1/4 ; // Load fraction
LF2 = 1/2 ; // Load fraction
LF3 = 3/4 ; // Load fraction
LF4 = 5/4 ; // Load fraction
P_cu_fl = 8.2 ; // Equivalent copper loss at full-load slip
P_cu_LF1 = (LF1)^2 * P_cu_fl ; // Equivalent copper loss at 1/4 rated load
P_cu_LF2 = (LF2)^2 * P_cu_fl ; // Equivalent copper loss at 1/2 rated load
P_cu_LF3 = (LF3)^2 * P_cu_fl ; // Equivalent copper loss at 3/4 rated load
P_cu_LF4 = (LF4)^2 * P_cu_fl ; // Equivalent copper loss at 5/4 rated load

P_L_1 = P_c + P_cu_LF1 ; // Total losses in kW at 1/4 rated load
P_L_2 = P_c + P_cu_LF2 ; // Total losses in kW at 1/2 rated load
P_L_3 = P_c + P_cu_LF3 ; // Total losses in kW at 3/4 rated load
P_L_fl = P_c + P_cu_fl ; // Total losses in kW at rated load
P_L_4 = P_c + P_cu_LF4 ; // Total losses in kW at 5/4 rated load

P_o_1 = P_o*LF1 ; // Total output in kW at 1/4 rated load
P_o_2 = P_o*LF2 ; // Total output in kW at 1/2 rated load
P_o_3 = P_o*LF3 ; // Total output in kW at 3/4 rated load
P_o_fl = P_o ; // Total output in kW at rated load
P_o_4 = P_o*LF4 ; // Total output in kW at 5/4 rated load

P_in_1 = P_L_1 + P_o_1 ; // Total input in kW at 1/4 rated load
P_in_2 = P_L_2 + P_o_2 ; // Total input in kW at 1/2 rated load
P_in_3 = P_L_3 + P_o_3 ; // Total input in kW at 3/4 rated load
P_in_fl = P_L_fl + P_o_fl ; // Total input in kW at rated load
P_in_4 = P_L_4 + P_o_4 ; // Total input in kW at 5/4 rated load

eta_1 = (P_o_1/P_in_1)*100 ; // Efficiency at 1/4 rated load
eta_2 = (P_o_2/P_in_2)*100 ; // Efficiency at 1/2 rated load
eta_3 = (P_o_3/P_in_3)*100 ; // Efficiency at 3/4 rated load
eta_fl = (P_o_fl/P_in_fl)*100 ; // Efficiency at rated load
eta_4 = (P_o_4/P_in_4)*100 ; // Efficiency at 5/4 rated load


// case b
PF_b = 0.8 ; // 0.8 PF lagging
Po_1 = P_o*LF1*PF_b ; // Total output in kW at 1/4 rated load
Po_2 = P_o*LF2*PF_b ; // Total output in kW at 1/2 rated load
Po_3 = P_o*LF3*PF_b ; // Total output in kW at 3/4 rated load
Po_fl = P_o*PF_b ; // Total output in kW at rated load
Po_4 = P_o*LF4*PF_b ; // Total output in kW at 5/4 rated load

Pin_1 = P_L_1 + Po_1 ; // Total input in kW at 1/4 rated load
Pin_2 = P_L_2 + Po_2 ; // Total input in kW at 1/2 rated load
Pin_3 = P_L_3 + Po_3 ; // Total input in kW at 3/4 rated load
Pin_fl = P_L_fl + Po_fl ; // Total input in kW at rated load
Pin_4 = P_L_4 + Po_4 ; // Total input in kW at 5/4 rated load

eta1 = (Po_1/Pin_1)*100 ; // Efficiency at 1/4 rated load
eta2 = (Po_2/Pin_2)*100 ; // Efficiency at 1/2 rated load
eta3 = (Po_3/Pin_3)*100 ; // Efficiency at 3/4 rated load
etafl = (Po_fl/Pin_fl)*100 ; // Efficiency at rated load
eta4 = (Po_4/Pin_4)*100 ; // Efficiency at 5/4 rated load

// case c
R_e2 = 1.417e-3 ; // Equivalent resistance in ohm referred to LV side
Pc = 1800 ; // Core losses in W
I_2 = sqrt(Pc/R_e2); // Load current in A for max.efficiency invariant of LF

// case d
V = 208 ; // Voltage rating in volt
I_2_rated = (kVA*1000) / V ; // Rated secondary current in A
LF_max = I_2 / I_2_rated ; // Load fraction for max.efficiency

// case e
// subscript e for eta_max indicates case e
cos_theta = 1;
V_2 = V ; // secondary voltage in volt
Pc = 1800 ; // core loss in W
// max.efficiency for unity PF
eta_max_e = (V_2*I_2*cos_theta) / ((V_2*I_2*cos_theta) + (Pc + I_2^2*R_e2)) * 100

// case f
// subscript f for eta_max indicates case e
cos_theta2 = 0.8;
// max.efficiency for 0.8 lagging PF
eta_max_f = (V_2*I_2*cos_theta2) / ((V_2*I_2*cos_theta2) + (Pc + I_2^2*R_e2)) * 100

// Display the results
disp("Example 14-21 Solution : ");

printf(" \n a: Tabulation at unity PF : ");
printf(" \n    __________________________________________________________________________________________________________");
printf(" \n    L.F \t Core loss \t Copper loss \tTotal loss \t Total Output \t Total Input \t Efficiency");
printf(" \n        \t   (kW)    \t    (kW)     \t  P_L (kW) \t    P_o(kW)   \t P_L+P_o(kW)\t  P_o/P_in(percent)");
printf(" \n    __________________________________________________________________________________________________________");
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF1,P_c,P_cu_LF1,P_L_1,P_o_1,P_in_1,eta_1);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF2,P_c,P_cu_LF2,P_L_2,P_o_2,P_in_2,eta_2);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF3,P_c,P_cu_LF3,P_L_3,P_o_3,P_in_3,eta_3);
printf(" \n    1  \t\t   %.1f \t\t   %.3f       \t %.3f \t   %.1f \t    %.2f \t %.2f ",P_c,P_cu_fl,P_L_fl,P_o_fl,P_in_fl,eta_fl);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f  \t %.3f \t   %.1f \t    %.2f \t %.2f ",LF4,P_c,P_cu_LF4,P_L_4,P_o_4,P_in_4,eta_4);
printf(" \n    __________________________________________________________________________________________________________\n\n");

printf(" \n b: Tabulation at 0.8 PF lagging : ");
printf(" \n    __________________________________________________________________________________________________________");
printf(" \n    L.F \t Core loss \t Copper loss \tTotal loss \t Total Output \t Total Input \t Efficiency");
printf(" \n        \t   (kW)    \t    (kW)     \t  P_L (kW) \t    P_o(kW)   \t P_L+P_o(kW)\t  P_o/P_in(percent)");
printf(" \n    __________________________________________________________________________________________________________");
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF1,P_c,P_cu_LF1,P_L_1,Po_1,Pin_1,eta1);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF2,P_c,P_cu_LF2,P_L_2,Po_2,Pin_2,eta2);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f       \t %.3f \t\t   %.1f \t    %.2f \t %.2f ",LF3,P_c,P_cu_LF3,P_L_3,Po_3,Pin_3,eta3);
printf(" \n    1  \t\t   %.1f \t\t   %.3f       \t %.3f \t   %.1f \t    %.2f \t %.2f ",P_c,P_cu_fl,P_L_fl,Po_fl,Pin_fl,etafl);
printf(" \n    %.2f  \t   %.1f \t\t   %.3f  \t %.3f \t   %.1f \t    %.2f \t %.2f ",LF4,P_c,P_cu_LF4,P_L_4,Po_4,Pin_4,eta4);
printf(" \n    __________________________________________________________________________________________________________\n\n");

printf(" \n c: Load current at which max.efficiency occurs :\n    I_2 = %.1f A \n",I_2);

printf(" \n d: Rated load current :\n    I_2(rated) = %.1f A \n",I_2_rated);
printf(" \n    Load fraction for η_max = %.3f(≃half rated load)\n ",LF_max);

printf(" \n e: Max.efficiency for unity PF :\n    η_max = %.2f percent \n",eta_max_e);

printf(" \n f: Max.efficiency for 0.8 lagging PF :\n    η_max = %.2f percent",eta_max_f);
