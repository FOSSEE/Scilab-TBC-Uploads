// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-14

clear; clc; close; // Clear the work space and console.

// Given data
P = 4 ;// Number of poles in Induction motor
f = 60 ; // Frequency in Hz
V = 220 ; // Rated voltage of IM in volt
hp_IM = 5 ; // Power rating of IM in hp
PF = 0.9 ; // Power factor
I_L = 16 ; // Line current in A
S = 1750 ; // Speed of IM in rpm

// No-load test data
I_nl = 6.5 ; // No-load line current in A
V_nl = 220 ; // No-load line voltage in volt
P_nl = 300 ; // No-load power reading in W

// Blocked rotor test
I_br = 16 ; // Blocked rotor line current in A
V_br = 50 ; // Blocked rotor voltage in volt
P_br = 800 ; // Blocked rotor power reading in W

// Calculations
// case a
P_cu = P_br ; // Full-load equivalent cu-loss
I_1 = I_br ; // Primary current in A
R_e1 = (P_cu) / (3/2 * (I_1)^2 ); // Equivalent total resistance of IM in ohm 

// case b
P_in = P_nl ; // Input power to IM
I1 = I_nl ; // Input current in A
P_r = P_in - (3/2 * (I1)^2 * R_e1); // Rotational losses in W

// case c
LF1 = 1/4 ; // Load fraction
LF2 = 1/2 ; // Load fraction
LF3 = 3/4 ; // Load fraction
LF4 = 5/4 ; // Load fraction
P_cu_LF1 = (LF1)^2 * P_cu ; // Equivalent copper loss at 1/4 rated-load
P_cu_LF2 = (LF2)^2 * P_cu ; // Equivalent copper loss at 1/2 rated-load
P_cu_LF3 = (LF3)^2 * P_cu ; // Equivalent copper loss at 3/4 rated-load
P_cu_LF4 = (LF4)^2 * P_cu ; // Equivalent copper loss at 5/4 rated-load

// case d
Full_load_input = sqrt(3)*V*I_L*PF ; 

// Efficiency
// Efficiency at 1/4 rated load
eta_LF1 = ( Full_load_input*LF1 - (P_r + P_cu_LF1) ) / (Full_load_input*LF1) * 100 ;

// Efficiency at 1/2 rated load
eta_LF2 = ( Full_load_input*LF2 - (P_r + P_cu_LF2) ) / (Full_load_input*LF2) * 100 ;

// Efficiency at 3/4 rated load
eta_LF3 = ( Full_load_input*LF3 - (P_r + P_cu_LF3) ) / (Full_load_input*LF3) * 100 ;

// Efficiency at rated load
eta_rated = ( Full_load_input - (P_r + P_cu) ) / (Full_load_input) * 100 ;

// Efficiency at 5/4 rated load
eta_LF4 = ( Full_load_input*LF4 - (P_r + P_cu_LF4) ) / (Full_load_input*LF4) * 100 ;

// case e
// since eta is calculated in percent divide it by 100 for hp calculations
P_o_LF1 = (Full_load_input*LF1*eta_LF1/100)/746 ; // Output hp at 1/4 rated load
P_o_LF2 = (Full_load_input*LF2*eta_LF2/100)/746 ; // Output hp at 1/2 rated load
P_o_LF3 = (Full_load_input*LF3*eta_LF3/100)/746 ; // Output hp at 3/4 rated load
P_o = (Full_load_input*eta_rated/100)/746 ; // Output hp at 1/4 rated load
P_o_LF4 = (Full_load_input*LF4*eta_LF4/100)/746 ; // Output hp at 5/4 rated load

// case f
hp = P_o ; // Rated output horsepower
T_o = (P_o*5252)/S ; // Outpue torque at full-load in lb-ft
T_o_Nm = T_o * 1.356 ; // Outpue torque at full-load in N-m

// Display the results
disp("Example 12-14 Solution : ");

printf(" \n a: Equivalent total resistance of IM :\n    R_e1 = %.3f Ω \n",R_e1);

printf(" \n b: Rotational losses :\n    P_r = %.f W \n ",P_r);

printf(" \n c: At full-load, P_cu = %d W \n",P_cu);
printf(" \n    P_cu at %.2f rated load = %d W",LF1,P_cu_LF1)
printf(" \n    P_cu at %.2f rated load = %d W",LF2,P_cu_LF2)
printf(" \n    P_cu at %.2f rated load = %d W",LF3,P_cu_LF3)
printf(" \n    P_cu at %.2f rated load = %d W \n",LF4,P_cu_LF4)

printf(" \n d: Full-load input = %.f W \n",Full_load_input);
printf(" \n    Efficiency :\n    η at %.2f rated load = %.1f percent \n",LF1,eta_LF1);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF2,eta_LF2);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF3,eta_LF3);
printf(" \n    η at rated load = %.1f percent \n",eta_rated);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF4,eta_LF4);

printf(" \n e: Output horsepower :\n    P_o at %.2f rated load = %.3f hp \n",LF1,P_o_LF1);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF2,P_o_LF2);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF3,P_o_LF3);
printf(" \n    P_o at rated load = %.3f hp \n",P_o);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF4,P_o_LF4);

printf(" \n f: Output torque at full-load :\n    T_o = %.1f lb-ft",T_o);
printf(" \n    T_o = %.2f N-m",T_o_Nm);
