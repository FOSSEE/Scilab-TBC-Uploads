// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-12

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase Y-connected alternator
kVA = 100 ; // kVA rating of the alternator
V  = 1100 ; // Rated voltage of the alternator in volt
I_a_nl = 8 ; // No-load armature current in A
P_in_nl = 6000 ; // No-load Power input to the armature in W
V_oc = 1350 ; // Open-ckt line voltage in volt
I_f = 18 ; // Field current in A
V_f = 125 ; // voltage across field winding in volt

// Calculations
// From Ex.6-4,
R_a = 0.45 ; // Armature resistance in ohm/phase
I_a_rated = 52.5 ; // Rated armature current in A/phase 

// case a
P_r = P_in_nl - 3 * (I_a_nl)^2 * R_a ; // Rotational loss of synchronous dynamo in W

// case b
P_f = V_f*I_f ; // Field copper loss in W

// case c
P_k = P_r + P_f ; // Fixed losses in W at rated synchronous speed
Pk  = P_k / 1000 ; // Fixed losses in kW at rated synchronous speed

// case d
P_cu = 3 * (I_a_rated)^2 * R_a ; // Rated electric armature cu-loss in W
P_cu_kW = P_cu / 1000 ; // Rated electric armature cu-loss in kW

LF1 = 1/4 ; // Load fraction
LF2 = 1/2 ; // Load fraction
LF3 = 3/4 ; // Load fraction
P_cu_LF1 = P_cu * (LF1)^2 ; // Electric armature cu-loss in W at 1/4 load
P_cu_LF2 = P_cu * (LF2)^2 ; // Electric armature cu-loss in W at 1/2 load
P_cu_LF3 = P_cu * (LF3)^2 ; // Electric armature cu-loss in W at 3/4 load

P_cu_LF1_kW = P_cu_LF1 / 1000 ; // Electric armature cu-loss in kW at 1/4 load
P_cu_LF2_kW = P_cu_LF2 / 1000 ; // Electric armature cu-loss in kW at 1/2 load
P_cu_LF3_kW = P_cu_LF3 / 1000 ; // Electric armature cu-loss in kW at 3/4 load


// case e
PF = 0.9 ; // Power factor lagging
// Efficiency
// η = LF(rated kVA)*PF / ( LF(rated kVA)*PF + P_k + P_cu ) * 100 
eta_1 = (LF1 * kVA * PF) / ( (LF1 * kVA * PF) + Pk + P_cu_LF1_kW ) * 100 ;// Efficiency at 1/4 load
eta_2 = (LF2 * kVA * PF) / ( (LF2 * kVA * PF) + Pk + P_cu_LF2_kW ) * 100 ;// Efficiency at 1/2 load
eta_3 = (LF3 * kVA * PF) / ( (LF3 * kVA * PF) + Pk + P_cu_LF3_kW ) * 100 ;// Efficiency at 3/4 load
eta_fl = (kVA * PF) / ( (kVA * PF) + Pk + P_cu_kW ) * 100 ;// Efficiency at full load

// case f
Ia = sqrt(P_k/(3*R_a)); // Armature current in A for max.efficiency at 0.9 PF lagging
LF = Ia / I_a_rated ; // Load fraction for max.efficiency
// at max.efficiency P_cu = P_k
eta_max = (LF * kVA * PF) / ( (LF * kVA * PF) + 2*Pk ) * 100 ;// Max Efficiency 0.9 PF lagging 

// case g
P_o = kVA*PF ; // Output power at 0.9 PF lagging
I_a = I_a_rated ;
P_d = P_o + (3*(I_a)^2*R_a/1000) + (V_f*I_f/1000) ; // Armature power developed in kW at 0.9 PF lagging at full-load

// Display the results
disp("Example 12-12 Solution : ");

printf(" \n From Ex.6-4,\n R_a = %.2f Ω/phase",R_a);
printf(" \n I_a(rated) = %.1f A \n ",I_a_rated);

printf(" \n a: Rotational loss of synchronous dynamo :\n    P_r = %.f W \n",P_r);

printf(" \n b: Field copper loss :\n    P_f = %d W \n ",P_f);

printf(" \n c: Fixed losses at rated synchronous speed :\n    P_k = %.f W\n",P_k);

printf(" \n d: P_cu at rated load = %.f W\n    P_cu ,",P_cu);
printf(" \n    at %.2f rated load = %.1f W",LF1 , P_cu_LF1);
printf(" \n    at %.2f rated load = %.1f W",LF2 , P_cu_LF2);
printf(" \n    at %.2f rated load = %.1f W \n",LF3 , P_cu_LF3);


printf(" \n e: Efficiency :\n    η at %.2f load = %.1f percent",LF1,eta_1);
printf(" \n    η at %.2f load = %.1f percent",LF2,eta_2);
printf(" \n    η at %.2f load = %.1f percent",LF3,eta_3);
printf(" \n    η at full-load = %.1f percent \n",eta_fl);

printf(" \n f: Armature current for max.efficiency at 0.9 PF lagging :");
printf(" \n    I_a(max) = %f A ≃ %.1f A\n",Ia,Ia);
printf(" \n    L.F. = %.2f \n",LF);
printf(" \n    Maximum efficiency :\n    η_max = %.1f percent \n ",eta_max);

printf(" \n g: Armature power developed at 0.9 PF lagging at full-load :");
printf(" \n    P_d = %.2f kW ",P_d);
