// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-7

clear; clc; close; // Clear the work space and console.

// Given data
V = 240 ; // Voltage rating of dc shunt motor in volt
P_hp = 25 ; // Power rating of dc shunt motor in hp
S = 1100 ; // Speed in rpm of the dc shunt motor
R_a = 0.15 ; // Armture resistance in ohm
R_f = 80 ; // Field resistance in ohm
I_L = 89 ; // Rated line current in A 

// Calculations
// Preliminary calculations
V_f = V ; // Voltage across field winding in volt
I_f = V_f / R_f ; // Field current in A
I_a = I_L - I_f ; // Armature current in A
P_o = P_hp * 746 ; // Power rating of dc shunt motor in W
V_a = V ; // Voltage across armature in volt
E_c_fl = V_a - I_a*R_a ; // back EMF in volt

// case a
E_c = E_c_fl ;
P_d = E_c * I_a ; // Power developed by the armature in W

// case b
P_r = P_d - P_o ; // Full-load rotational losses in W

// case c
P_in = V*I_L ; // Input power in W
eta_fl = (P_o/P_in)*100 ; // Full-load efficiency 

// case d
P_k = V_f*I_f + P_r ; // Total constant losses in W

// case e
Ia = sqrt(P_k/R_a); // Armature current in A from maximum efficiency

// case f
LF = Ia / I_a ; // Load fraction at which max.efficiency is produced

// case g
rated_input = V*I_L ;
eta_max = ( (LF*rated_input) - 2*P_k ) / (LF*rated_input) * 100; // Maximum efficiency

// Display the results
disp("Example 12-7 Solution : ");

printf(" \n Field current : I_f = %d A \n ",I_f);
printf(" \n Armature current : I_a = %d A \n ",I_a);
printf(" \n P_o = %d W \n",P_o );
printf(" \n E_c(fl) = %.1f V \n",E_c_fl);

printf(" \n a: Power developed by the armature :\n    P_d = %.1f W \n",P_d);

printf(" \n b: Full-load rotational losses :\n    P_r = %.1f W \n",P_r);

printf(" \n c: Full-laod efficiency :\n    η = %.1f percent \n ",eta_fl );

printf(" \n d: Total constant losses :\n    P_k = %.1f W \n",P_k);

printf(" \n e: Armature current from maximum efficiency :\n    I_a = %.1f A\n ",Ia);

printf(" \n f: L.F. = %.1f \n ",LF);

printf(" \n g: η_max = %.1f percent",eta_max);

