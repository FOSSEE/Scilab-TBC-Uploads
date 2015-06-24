// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 11: SPECIALIZED DYNAMOS
// Example 11-1

clear; clc; close; // Clear the work space and console.

// Given data
// Torque - speed relations shown in Fig.11-3b for a dc servomotor.

// Calculations
// case a
// Extrapolating to load line point x,
S = 800 ; // Motor speed at point x
V = 60 ; // Armature voltage in volt at point x

// case b
// At standstill, 60 V yields 4.5 lb-ft of starting torque
T = 4.5 ;

// case c
P_c = (T*S)/5252 ; // Power delivered to the load in hp (from case a conditions)
P_c_watt = P_c * 746 ; // P_c in W
// case d
// At point o:
T_d = 1.1 ; // Starting torque in lb-ft (subscript d indicates case d) and
S_d = 410 ; // Motor speed at point at point o

// case e
// At point w:
T_e = 2.4 ; // Starting torque in lb-ft (subscript e indicates case e) and
S_e = 900 ; // Motor speed at point at point w

// case f
P_d = (T_d*S_d)/5252 ; // Power delivered to the load in hp (from case d conditions)
P_d_watt = P_d * 746 ; // P_d in W

// case g
P_f = (T_e*S_e)/5252 ; // Power delivered to the load in hp (from case f conditions)
P_f_watt = P_f * 746 ; // P_f in W

// case h
// Upper limit of power ranges A and B are:
A = 65 ; // Upper limit of power range A in W
B = 305 ; // Upper limit of power range B in W

// Display the results
disp("Example 11-1 Solution : ");

printf(" \n a: Extrapolating to load line point x,\n    S = %d rpm ",S);
printf(" \n    Load line voltage is %d V \n",V);

printf(" \n b: At standstill, %d V yields T = %.1f lb-ft of starting torque\n",V,T);

printf(" \n c: Power delivered to the load in hp (from case a conditions)");
printf(" \n    P = %.4f hp = %d W \n",P_c,P_c_watt);

printf(" \n d: At point o:\n    T = %.1f lb-ft and S = %d rpm \n",T_d,S_d);

printf(" \n e: At point w:\n    T = %.1f lb-ft and S = %d rpm \n",T_e,S_e);

printf(" \n f: P = %.4f hp = %.1f W \n ",P_d,P_d_watt);

printf(" \n g: P = %.4f hp = %.f W \n",P_f,P_f_watt );

printf(" \n h: A = %d W  and  B = %d W ", A , B );
