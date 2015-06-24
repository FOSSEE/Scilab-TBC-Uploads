// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-6

clear; clc; close; // Clear the work space and console.

// Given data
V = 240 ; // Voltage rating of dc shunt motor in volt
P_hp = 5 ; // Power rating of dc shunt motor in hp
S = 1100 ; // Speed in rpm of the dc shunt motor
R_a = 0.4 ; // Armture resistance in ohm
R_f = 240 ; // Field resistance in ohm
I_L = 20 ; // Rated line current in A 

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
eta = (P_o/P_in)*100 ; // Full-load efficiency 

// Display the results
disp("Example 12-6 Solution : ");

printf(" \n Preliminary calculations using nameplate data : ");
printf(" \n Field current : I_f = %d A \n ",I_f);
printf(" \n Armature current : I_a = %d A \n ",I_a);
printf(" \n P_o = %d W ",P_o );
printf(" \n E_c(fl) = %.1f V \n",E_c_fl);

printf(" \n a: Power developed by the armature :\n    P_d = %.1f W \n",P_d);

printf(" \n b: Full-load rotational losses :\n    P_r = %.1f W \n",P_r);

printf(" \n c: Full-laod efficiency :\n    η = %.1f percent ",eta );
