// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 14: TRANSFORMERS
// Example 14-20

clear; clc; close; // Clear the work space and console.

// Given data
kVA = 500 ; // kVA rating of the step-down transformer
V_1 = 2300 ; // Primary voltage in volt
V_2 = 208 ; // Secondary voltage in volt
f = 60 ; // Frequency in Hz

// SC-test data
P_sc = 8200 ; // wattmeter reading in W
I_sc = 217.4 ; // Short circuit current in A
V_sc = 95 ; // Short circuit voltage in V

// OC-test data
P_oc = 1800 ; // wattmeter reading in W
I_oc = 85 ; // Open circuit current in A
V_oc = 208 ; // Open circuit voltage in V

// Calculations
alpha = V_1 / V_2 ; // Transformation ratio
// case a
P = P_sc ; // wattmeter reading in W
I1 = I_sc ; // Short circuit current in A
R_e1 = P / (I1)^2 ; // Equivalent resistance w.r.t HV side in ohm
R_e2 = R_e1 / (alpha)^2 // Equivalent resistance referred to LV side in ohm

// case b
r_2 = R_e2 / 2 ; // Resistance of low-voltage side in ohm

// case c
I_m = I_oc ; // Open circuit current in A
P_cu = (I_m)^2 * r_2 ; // Transformer copper loss of the LV side wdg during OC-test in W

// case d
P_c = P_oc - P_cu ; // Transformer core loss in W

// Display the results
disp("Example 14-20 Solution : ");

printf(" \n a: Equivalent resistance w.r.t HV side :\n    R_e1 = %.4f Ω\n",R_e1);
printf(" \n    Equivalent resistance w.r.t LV side :\n    R_e2 = %f Ω = %.3f mΩ \n",R_e2,R_e2*1000);

printf(" \n b: Resistance of LV side :\n    r_2 = %f Ω = %.2f mΩ\n",r_2,r_2*1000);

printf(" \n c: Transformer copper loss of the LV side wdg during OC-test : ");
printf(" \n    (I_m)^2 * r_2 = %f W \n",P_cu);

printf(" \n d: Transformer core loss :\n    P_c = %f W \n ",P_c);

printf(" \n e: Yes.The error is approximately 5/%d = 0.278 percent,which is",P_oc);
printf(" \n    within the error produced by the instruments used in the test.");
printf(" \n    We may assume that the core loss is %d W.",P_oc);
