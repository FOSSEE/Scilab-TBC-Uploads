// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-3

clear; clc; close; // Clear the work space and console.

// Given data
V = 240 ; // Voltage rating of the dc shunt motor in volt
P_hp = 25 ; // Power rating of the dc shunt motor in hp
S = 1800 ; // Speed in rpm of the shunt generator
I_L = 89 ; // Full-load line current
R_a = 0.05 ; // Armature resistance in ohm
R_f = 120 ; // Field resistance in ohm

// Calculations
// case a
V_f = V ; // Field voltage in volt
I_f = V_f / R_f ; // Field current in A
I_a = I_L - I_f  ; // Armature current in A
V_a = V ;
E_c = V_a - I_a*R_a ; // Armature voltage to be applied to the motor when motor 
// is run light at 1800 rpm during stray power test

// case b
Ia = 4.2 ; // Armature current in A produced by E_c
Va = E_c ; // Armature voltage in volt
P_r = Va*Ia ; // Stray power in W ,when E_c produces I_a = 4.2 A at speed of 1800 rpm

// Display the results
disp("Example 12-3 Solution : ");

printf(" \n a: Field current :\n    I_f = %d A \n ",I_f );
printf(" \n    Armature current :\n    I_a = %d A \n ",I_a );
printf(" \n    Armature voltage to be applied to the motor when motor is run");
printf(" \n    light at %d rpm during stray power test :\n ",S );
printf(" \n    E_c = %.2f V \n ",E_c );

printf(" \n b: Stray power :\n    P_r = %.1f W ",P_r ); 
