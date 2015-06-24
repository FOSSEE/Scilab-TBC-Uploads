// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-17

clear; clc; close; // Clear the work space and console.

// Given data
// three-phase SCIM
V_o = 220 ; // Rated voltage in volt
P = 4 ; // Number of poles in SCIM
P_o = 10 ; // Rated power in hp
f = 60 ; // Frequency in Hz(assume,not given)
T_o = 30 ; // Rated torque in lb-ft
S_r = 1710 ; // Rated rotor speed in rpm
V_n1 = 242 ; // Impressed stator voltage in volt(case a)
V_n2 = 198 ; // Impressed stator voltage in volt(case b)

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
// case a : Impressed stator voltage = 242 V
s_o = (S - S_r)/S ; // Rated slip

T_n1 = T_o * (V_n1/V_o)^2 ; // New torque in lb-ft

s_n1 = s_o * (T_o/T_n1); // New slip

S_rn1 = S*(1 - s_n1); 

// case b : Impressed stator voltage = 198 V
T_n2 = T_o * (V_n2/V_o)^2 ; // New torque in lb-ft

s_n2 = s_o * (T_o/T_n2); // New slip

S_rn2 = S*(1 - s_n2);

// case c
// Subscript a in percent_slip and percent_speed indicates part a
percent_slip_a = (s_o - s_n1)/s_o * 100 ; // Percent change in slip in part(a)

percent_speed_a = (S_rn1 - S_r)/S_r * 100; // Percent change in speed in part(a)

// case d
// Subscript b in percent_slip and percent_speed indicates part b
percent_slip_b = (s_n2 - s_o)/s_o * 100 ; // Percent change in slip in part(b)

percent_speed_b = (S_r - S_rn2)/S_r * 100; // Percent change in speed in part(b)

// Display the results
disp("Example 9-17 Solution : ");

printf(" \n a: Rated slip :\n    s = %.2f\n",s_o);
printf(" \n    For impressed stator voltage = %d V \n ",V_n1);
printf(" \n    New torque :\n    T_n = %.1f lb-ft \n ",T_n1);
printf(" \n    New slip :\n    s_n = %f \n ",s_n1);
printf(" \n    New rotor speed :\n    S_r = %f rpm \n",S_rn1);

printf(" \n b: For impressed stator voltage = %d V \n ",V_n2);
printf(" \n    New torque :\n    T_n = %.1f lb-ft \n ",T_n2);
printf(" \n    New slip :\n    s_n = %f \n ",s_n2);
printf(" \n    New rotor speed :\n    S_r = %f rpm \n",S_rn2);

printf(" \n c: Percent change in slip in part(a)");
printf(" \n    = %.1f percent decrease.\n",percent_slip_a);
printf(" \n    Percent change in speed in part(a)");
printf(" \n    = %.2f percent increase \n",percent_speed_a);

printf(" \n d: Percent change in slip in part(b)");
printf(" \n    = %.2f percent increase.\n",percent_slip_b);
printf(" \n    Percent change in speed in part(b)");
printf(" \n    = %.2f percent decrease\n",percent_speed_b);

printf(" \n   SLIGHT VARIATIONS IN PERCENT CHANGE IN SLIP AND SPEED ARE DUE TO");
printf(" \n   NON-APPROXIMATION OF NEW SLIPS AND NEW SPEEDS CALCULATED IN SCILAB.")
