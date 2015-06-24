// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 6: AC DYNAMO VOLTAGE RELATIONS-ALTERNATORS
// Example 6-8

clear; clc; close; // Clear the work space and console.

// Given data

kVA = 100 ; // kVA rating of the 3-phase alternator
V_L = 1100 ; // Line voltage of the 3-phase alternator in volt
S = 1200 ; // Synchronous speed in rpm

// dc-resistance test data
E_gp1 = 6 ; // generated phase voltage in volt 
V_l = E_gp1 ; // generated line voltage in volt
I_a1 = 10 ; // full-load current per phase in A
cos_theta = 0.8 ; // 0.8 PF lagging 
sin_theta = sqrt( 1 - (cos_theta)^2 ); // 

// open-circuit test data
E_gp2 = 420 ; // generated phase voltage in volt 
I_f2 = 12.5 ; // Field current in A

// short-circuit test data
I_f3 = 12.5 ; // Field current in A
// Line current I_l = rated value   in A

// Calculated data from Ex.6-4 & Ex.6-7
I_L = 52.5 ; // Rated line current in A
I_a = I_L ; // Rated current per phase in A
E_gp = 532 + %i*623 ; // Generated voltage at 0.8 PF lagging
E_g = 819 ; // E_g = magnitude of E_gp in volt
X_s = 4.6 ; // Synchronous reactance per phase
V_p = 635 ; // Phase voltage in volt
deba = 12.63 ; // Torque angle in degrees

// Calculations
// case a
T_p_a  = ( 7.04 * E_g * V_p * sind(deba) ) / (S*X_s); // Output torque per phase in lb.ft
T_3phase_a = 3 * T_p_a ; // Output torque for 3-phase in lb.ft

// case b
omega = S * 2*%pi *(1/60); // Angular frequency in rad/s
T_p_b = ( E_g * V_p * sind(deba))/(omega*X_s); // Output torque per phase in lb.ft
T_3phase_b = 3 * T_p_b ; // Output torque for 3-phase in lb.ft

// case c
T_p_c = T_p_a * 1.356 ; // Output torque per phase in N.m
T_3phase_c = 3 * T_p_c ; // Output torque for 3-phase in N.m

// Display the results
disp("Example 6-8 Solution : ");
pi = %pi;
printf(" \n    Slight variations in the answers are due to value of pi = %f ",pi);
printf(" \n    and omega = %f, which are slightly different as in the textbook.\n",omega);
printf(" \n a: T_p = %d lb-ft ",T_p_a);
printf(" \n    T_3phase = %d lb-ft \n", T_3phase_a);

printf(" \n b: T_p = %.1f N-m ",T_p_b);
printf(" \n    T_3phase = %.1f N-m \n", T_3phase_b);

printf(" \n c: T_p = %.1f N-m ",T_p_c);
printf(" \n    T_3phase = %.1f N-m \n", T_3phase_c);
printf(" \n    Answers from cases b and c almost tally each other ");
