// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-18

clear; clc; close; // Clear the work space and console.

// Given data
// three-phase WRIM
V_o = 220 ; // Rated voltage in volt
P_o = 10 ; // Rated power in hp
P = 4 ; // Number of poles in WRIM(assumption)
f = 60 ; // Frequency in Hz(assume,not given)
R_ro = 0.3 ; // Rotor resistance in ohm
T_o = 30 ; // Rated torque in lb-ft
S_r = 1750 ; // Rated rotor speed in rpm
R_r_ext = 1.7 ; // External rotor resistance in ohm/phase inserted in the rotor ckt 
R_rn = R_ro + R_r_ext ; // Total rotor resistance in ohm

V_n1 = 240 ; // Impressed stator voltage in volt(case a)
V_n2 = 208 ; // Impressed stator voltage in volt(case b)
V_n3 = 110 ; // Impressed stator voltage in volt(case c)

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field

// case a : Impressed stator voltage = 240 V
s_o = (S - S_r)/S ; // Rated slip

T_n1 = T_o * (V_n1/V_o)^2 ; // New torque in lb-ft

s_n1 = s_o * (T_o/T_n1) * (R_rn/R_ro); // New slip

S_rn1 = S*(1 - s_n1); 

// case b : Impressed stator voltage = 208 V
T_n2 = T_o * (V_n2/V_o)^2 ; // New torque in lb-ft

s_n2 = s_o * (T_o/T_n2) * (R_rn/R_ro); // New slip

S_rn2 = S*(1 - s_n2);

// case c : Impressed stator voltage = 110 V
T_n3 = T_o * (V_n3/V_o)^2 ; // New torque in lb-ft

s_n3 = s_o * (T_o/T_n3) * (R_rn/R_ro); // New slip

S_rn3 = S*(1 - s_n3);

// Display the results
disp("Example 9-18 Solution : ");

printf(" \n a: Rated slip :\n    s = %f\n",s_o);
printf(" \n    For impressed stator voltage = %d V \n ",V_n1);
printf(" \n    New torque :\n    T_n = %.1f lb-ft \n ",T_n1);
printf(" \n    New slip :\n    s_n = %f \n ",s_n1);
printf(" \n    New rotor speed :\n    S_r = %f rpm \n",S_rn1);

printf(" \n b: For impressed stator voltage = %d V \n ",V_n2);
printf(" \n    New torque :\n    T_n = %.2f lb-ft \n ",T_n2);
printf(" \n    New slip :\n    s_n = %f \n ",s_n2);
printf(" \n    New rotor speed :\n    S_r = %f rpm \n",S_rn2);

printf(" \n c: For impressed stator voltage = %d V \n ",V_n3);
printf(" \n    New torque :\n    T_n = %.1f lb-ft \n ",T_n3);
printf(" \n    New slip :\n    s_n = %f \n ",s_n3);
printf(" \n    New rotor speed :\n    S_r = %f rpm \n",S_rn3);
