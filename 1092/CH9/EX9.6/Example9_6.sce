// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-6

clear; clc; close; // Clear the work space and console.

// Given data
P = 8 ; // Number of poles in the SCIM
f = 60 ; // Frequency in Hz
R_r = 0.3 ; // rotor resistance per phase in ohm/phase 
R_x = 0.7 ; // Added resistance in ohm/phase 
R_r_total = R_r + R_x ; // Total resistance per phase in ohm
S_r = 875 ; // Full-load Speed in rpm 


// Calculated values from Ex.9-6
S = 900 ; // Speed in rpm of the rotating magnetic field
X_lr = 1.08 ; // Locked rotor reactance in ohm

// Calculations
// case a
s = (S - S_r)/S ; // Full-load slip,short circuited
s_r = R_r_total / R_r * s; // New full-load slip with added resistance

S_r_new = S*(1-s_r); // New full-load speed in rpm 

// case b
// Neglecting constant Kn_t ,since we are taking torque ratios
T_o = ( R_r / ((R_r)^2 + (X_lr)^2) ); // Original torque
T_f = ( R_r + R_x) / ( (R_r + R_x)^2  + (X_lr)^2 ); // Original torque

torque_ratio = T_f / T_o ; // Ratio of final torque to original torque
T_final = 2*torque_ratio ;

// Display the results
disp("Example 9-6 Solution : ");
printf(" \n a: The full-load slip,short circuited,is ");
printf(" \n    s = %.4f \n",s );
printf(" \n    Since slip is proportional to rotor resistance and since the ");
printf(" \n    increased rotor resistance is R_r = %.1f + %.1f = %d ,",R_x,R_r,R_r_total);
printf(" \n    the new full-load slip with added resistance is : ");
printf(" \n    s_r = %.4f \n",s_r);
printf(" \n    The new full-load speed is : " );
printf(" \n    S(1-s) = %.f rpm \n",S_r_new );

printf(" \n b: The original starting torque T_o was twice the full-load torque");
printf(" \n    with a rotor resistance of %.1f ohm and a rotor reactance of %.2f ohm",R_r,X_lr);
printf(" \n    (Ex.9-5).The new starting torque conditions may be summarized by the   ");
printf(" \n    following table and compared from Eq.(9-14),where T_o ");
printf(" \n    is the original torque and T_f is the new torque.");

printf(" \n    _________________________________________");
printf(" \n    Condition \t R_r \t X_lr \t T_starting ");
printf(" \n              \t ohm \t ohm  \t ");
printf(" \n    _________________________________________");
printf(" \n    Original : \t %.1f \t %.2f \t 2*T_n ",R_r,X_lr);
printf(" \n    New      : \t %.1f \t %.2f \t   ?   ",R_r_total,X_lr);
printf(" \n    _________________________________________\n");

printf(" \n    T_o = %.2f * K_n_t",T_o);
printf(" \n    T_f = %.3f * K_n_t",T_f);
printf(" \n    T_f/T_o = %.2f and T_f = %.2f * T_o\n ",torque_ratio,torque_ratio);
printf(" \n    Therefore,\n    T_f = %.3f * T_n",T_final);
