// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-17

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 230 ; // Rated armature voltage in volt
P = 10 ; // Rated power in hp
S = 1250 ; // Rated speed in rpm
R_A = 0.25 ; // Armature resistance in ohm
R_p = 0.25 ; // Interpolar resistance
BD = 5 ; // Brush voltage drop in volt
R_s = 0.15 ; // Series field resistance in ohm
R_sh = 230 ; // Shunt field resistance in ohm
phi_1 = 1 ;// Original flux per pole

// Long-shunt cumulative connection
I_l = 55 ; // Line current in A at rated load 
phi_2 = 1.25 ; // Flux increased by 25% due to long-shunt cumulative connection
I_ol = 4 ; // No-load line current in A
S_o = 1810 ; // No-load speed in rpm

// Calculations
R_a = R_A + R_p ; // Effective armature resistance in ohm
I_f = V_a / R_sh ; // Field current in A in shunt winding
I_a = I_ol - I_f ; // Armature current in A for shunt connection
E_c_o = V_a - ( I_a * R_a + BD ); // No-load BACK EMF in volt for shunt connection
E_c_o1 = V_a - ( I_a * R_a + I_a * R_s + BD ); // No-load BACK EMF in volt for
// long shunt cumulative connection
S_n1 = S_o * ( E_c_o1 / E_c_o ); // Speed at no load

I_f = V_a / R_sh ; // Field current in A in shunt winding
I_a_lsh = I_l - I_f ; // Armature current in A
E_c_full_load = V_a - ( I_a_lsh * R_a + BD ); // No-load BACK EMF in volt at
// full-load for long-shunt cumulative connection 

E_c_full_load_lsh = V_a - ( I_a_lsh * R_a + I_a_lsh * R_s + BD ); // BACK EMF in volt 
// at full-load for long-shunt cumulative motor 

S_r = S_o * ( E_c_full_load / E_c_o ); // Speed at rated load for shunt connection
S_r_lsh = S_n1 * ( E_c_full_load_lsh / E_c_o1 ) * ( phi_1 / phi_2 ); 
// Speed at rated load for shunt connection

P_d = E_c_full_load * I_a_lsh ; // Internal power in watts
hp = P_d / 746 ; // Internal horse power

T_shunt = ( hp * 5252 ) / S_r ; // Internal torque @ full-load for shunt motor

I_a1 = I_a_lsh; // Armature current for shunt motor in A
I_a2 = I_a_lsh; // Armature current for long-shunt cumulative motor in A
T_comp = T_shunt * ( phi_2 / phi_1 ) * ( I_a2 / I_a1); // Internal torque 
// at full-load for long-shunt cumulative motor in A

Horsepower = ( E_c_full_load_lsh * I_a_lsh ) / 746 ; // Internal horsepower of
// compound motor based on flux increase

// Display the results
disp(" Example 4-17 Solution : ");
printf(" \n a: S_n1 = %d rpm \n", S_n1 );
printf(" \n b: S_r = %d rpm \n", S_r_lsh );
printf(" \n c: Internal torque of shunt motor at full-load : ");
printf(" \n    T_shunt = %.2f lb-ft ", T_shunt );
printf(" \n    T_comp = %.2f lb-ft \n", T_comp );
printf(" \n d: Horsepower = %.1f hp \n", Horsepower );
printf(" \n e: The internal horsepower exceeds the rated horsepower because ");
printf(" \n    the power developed in the motor must also overcome the internal");
printf(" \n    mechanical rotational losses. ");
