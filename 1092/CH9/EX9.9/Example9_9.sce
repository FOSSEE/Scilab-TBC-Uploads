// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-9

clear; clc; close; // Clear the work space and console.

// Given data
P = 8 ; // Number of poles in the SCIM
f = 60 ; // Frequency in Hz
S_r = 875 ; // Full-load Speed in rpm with rotor short-circuited
R_r = 0.3 ; // rotor resistance per phase in ohm/phase 
R_x = 0.7 ; // Added resistance in ohm/phase 
R_x_a = 1.7 ; // Added resistance in ohm/phase (case a)
R_x_b = 2.7 ; // Added resistance in ohm/phase (case b) 
R_x_c = 3.7 ; // Added resistance in ohm/phase (case c) 
R_x_d = 4.7 ; // Added resistance in ohm/phase (case d) 

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
s_o = (S - S_r)/S ; //  Slip at rotor speed 875 rpm

// case a
s_r_a = s_o * (R_r + R_x_a)/R_r; // Rated slip
S_r_a = S * (1 - s_r_a); // Full-load speed in rpm for added resistance R_x_a

// case b
s_r_b = s_o * (R_r + R_x_b)/R_r; // Rated slip
S_r_b = S * (1 - s_r_b); // Full-load speed in rpm for added resistance R_x_b

// case c
s_r_c = s_o * (R_r + R_x_c)/R_r; // Rated slip
S_r_c = S * (1 - s_r_c); // Full-load speed in rpm for added resistance R_x_c

// case d
s_r_d = s_o * (R_r + R_x_d)/R_r; // Rated slip
S_r_d = S * (1 - s_r_d); // Full-load speed in rpm for added resistance R_x_d

// Display the results
disp("Example 9-9 Solution : ");

printf(" \n Slip s_r = s_o*(R_r+R_x)/R_r \n Rotor speed S_r = S_o*(1-s)\n");

printf(" \n    Calculated value of s_o = %f , instead of 0.0278(textbook)",s_o)
printf(" \n    so slight variations in the answers below.\n");

printf(" \n a: When R_x = %.1f ohm ",R_x_a);
printf(" \n    s_r = %.3f \n    S_r = %.1f rpm \n",s_r_a,S_r_a );

printf(" \n b: When R_x = %.1f ohm ",R_x_b);
printf(" \n    s_r = %.3f \n    S_r = %.1f rpm \n",s_r_b,S_r_b );

printf(" \n c: When R_x = %.1f ohm ",R_x_c);
printf(" \n    s_r = %.3f \n    S_r = %.1f rpm \n",s_r_c,S_r_c );

printf(" \n d: When R_x = %.1f ohm ",R_x_d);
printf(" \n    s_r = %.3f \n    S_r = %.1f rpm \n",s_r_d,S_r_d );

printf(" \n    This example,verifies that slip is proportional to rotor resistance");
printf(" \n    as summarized below.");

printf(" \n  ___________________________________________________________________");
printf(" \n    R_T(ohm) = R_r+R_x \t\t Slip \t\t Full-load Speed(rpm)");
printf(" \n  ___________________________________________________________________");
printf(" \n      Given \t\t\t Given \t\t Given \t\ ");
printf(" \n      0.3 \t\t\t 0.0278 \t 875 ");
printf(" \n      0.3+0.1 = 1.0 \t\t 0.0926 \t 817");
printf(" \n  ___________________________________________________________________");
printf(" \n      Given \t\t\t Calculated \t Calculated \t\ ");
printf(" \n   a. %.1f + %.1f = %.1f \t\t %.3f \t\t %.1f ",R_r,R_x_a,R_r+R_x_a,s_r_a,S_r_a);
printf(" \n   b. %.1f + %.1f = %.1f \t\t %.3f \t\t %.1f ",R_r,R_x_b,R_r+R_x_b,s_r_b,S_r_b);
printf(" \n   c. %.1f + %.1f = %.1f \t\t %.3f \t\t %.1f ",R_r,R_x_c,R_r+R_x_c,s_r_c,S_r_c);
printf(" \n   d. %.1f + %.1f = %.1f \t\t %.3f \t\t %.1f ",R_r,R_x_d,R_r+R_x_d,s_r_d,S_r_d);
printf(" \n  ___________________________________________________________________");
