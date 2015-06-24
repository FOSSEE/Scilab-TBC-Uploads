// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-5

clear; clc; close; // Clear the work space and console.

// Given data
P = 10000 ; // Power rating of the shunt generator in W
V = 230 ;// Voltage rating of the shunt generator in volt
S = 1750 ; // Speed in rpm of the shunt generator
R_a = 0.2 ; // Armature resistance
// Calculated values from Ex.12-1
P_r = 489.2 ; // Shunt generator rotational losses in W
Vf_If = 230 ; // Shunt field circuit loss in W
I_a_rated = 44.5 ; // Rated armature current in A

// Calculations
// case a
I_a = sqrt( (Vf_If + P_r) / R_a ); // Armature current in A for max.efficiency

// case b
LF = I_a / I_a_rated ; // Load fraction
LF_percent = LF*100 ; // Load fraction in percent 

// case c
P_k = Vf_If + P_r ;
eta_max = (P*LF)/( (P*LF) + (Vf_If + P_r) + P_k ) * 100; // Maximum efficiency

// case d
// subscript d for LF indicates case d
LF_d = sqrt(P_k/(I_a_rated^2*R_a)) ; // Load fraction from fixed losses and rated variable losses

// Display the results
disp("Example 12-5 Solution : ");

printf(" \n a: Armature current for max.efficiency :\n    I_a = %.f A \n",I_a);

printf(" \n b: Load fraction :\n    L.F. = %.1f percent = %.3f*rated \n",LF_percent,LF);

printf(" \n c: Maximum efiiciency :\n    η = %.2f percent \n",eta_max);

printf(" \n d: Load fraction from fixed losses and rated variable losses :");
printf(" \n    L.F. = %.3f*rated",LF_d);
