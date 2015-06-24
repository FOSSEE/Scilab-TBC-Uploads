// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-1

clear; clc; close; // Clear the work space and console.

// Given data
P = 10000 ; // Power rating of the shunt generator in W
V = 230 ;// Voltage rating of the shunt generator in volt
S = 1750 ; // Speed in rpm of the shunt generator
// Shunt generator was made to run as a motor
V_a = 245 ; // Voltage across armature in volt
I_a = 2 ; // Armature current in A
R_f = 230 ; // Field resistance in ohm
R_a = 0.2 ; // Armature resistance

// Calculations
// case a
Rotational_losses = (V_a * I_a) - (I_a^2 * R_a); // Rotational losses in W at full load 

// case b
V_t = V ;
// At rated load
I_L = P / V_t ; // Line current in A
I_f = V / R_f ; // Field current in A
Ia = I_f + I_L ; // Armature current in A

armature_loss = (Ia^2 * R_a); // Full-load armature loss in W
V_f = V ; // Field voltage in volt
field_loss = V_f * I_f; // Full-load field loss in W

// case c
//
eta = P / ( P + Rotational_losses + (armature_loss+field_loss) ) * 100 ; 

// Display the results
disp("Example 12-1 Solution : ");

printf(" \n a: Rotational losses at full load = %.1f W \n",Rotational_losses);

printf(" \n b: At the rated load,\n    I_L = %.1f A\n    I_a = %.1f A\n",I_L,Ia);
printf(" \n    Full-load armature loss :\n    (I_a^2)*R_a = %.f W \n",armature_loss);
printf(" \n    Full-load field loss :\n    V_f*I_f = %.f W \n",field_loss);

printf(" \n c: Efficiency of the generator at rated load(full-load in this Ex.) : ");
printf(" \n    η = %.1f percent ",eta);
