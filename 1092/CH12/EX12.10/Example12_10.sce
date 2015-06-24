// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-10

clear; clc; close; // Clear the work space and console.

// Given data
V = 125 ; // Voltage rating of genrator in volt
P_o = 12500 ; // Power rating of genrator in W
P_hp = 20 ; // Power rating of motor in hp
R_a = 0.1 ; // Armture resistance in ohm
R_f = 62.5 ; // Field resistance in ohm
P_var = 1040 ; // Rated variable electric loss in W

// Calculations
// case a
P_in = P_hp * 746 ; // Power input to generator in W
eta = P_o / P_in * 100 ; // Efficiency

// case b
V_f = V  ; // Voltage across shunt field wdg in volt
P_sh_loss = (V_f)^2 / R_f ; // Shunt field loss in W

// case c
V_L = V ; 
I_L = P_o / V_L ; // Line current in A
I_f = V_f / R_f ; // Field current in A
I_a = I_L + I_f ; // Armature current in A
E_g = V_L + I_a*R_a ; // Generated EMF in volt

P_d1 = E_g * I_a ; // Generated electric power in W
P_f = V_f * I_f ;
P_d2 = P_o + P_var + P_f ; // Generated electric power in W

// case d
P_d = P_d1;
P_r = P_in - P_d ; // Rotational power losses in W

// case e
P_k = P_r + V_f*I_f ; // Constant losses in W
Ia = sqrt(P_k/R_a); // Armature current in A for max.efficiency

// case f
I_a_rated = I_a ; // Rated armature current in A
LF = Ia / I_a ; // Load fraction

// case g
rated_output = 12500 ; // Rated output in kW
// Maximum efficiency
eta_max = ( LF * rated_output ) / ( ( LF * rated_output ) + (2*P_k) ) * 100 ;

// Display the results
disp("Example 12-10 Solution : ");

printf(" \n a: Efficiency :\n    η = %f percent ≃ %.1f percent \n ",eta,eta);

printf(" \n b: Shunt field loss :\n    (V_f)^2/R_f = %d W \n ",P_sh_loss);

printf(" \n c: Line current : I_L = %d A \n\n    Field current : I_f = %d A",I_L,I_f);
printf(" \n\n    Armature current : I_a = %d A ",I_a);
printf(" \n\n    Generated EMF : E_g = %.1f V ",E_g);
printf(" \n\n    Generated electric power : ");
printf(" \n    1. P_d = %d W \n\n    2. P_d = %d W \n ",P_d1,P_d2);

printf(" \n d: Rotational power losses :\n    P_r = %f W ≃ %.f W \n",P_r,P_r);

printf(" \n e: Constant losses : P_k = %f W ≃ %.f W \n ", P_k ,P_k);
printf(" \n    Armature current for max.efficiency : I_a = %.1f A \n ",Ia);

printf(" \n f: Load fraction : L.F. = %.2f \n ",LF);

printf(" \n g: Maximum efficiency : η = %f percent ≃ %.2f percent",eta_max,eta_max);
