// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-18

clear; clc; close; // Clear the work space and console.

// Given data
P = 25 ; // Power rating of a series motor in hp
V_a = 250 ; // Rated voltage in volt
R_a = 0.1 ; // Armature ckt resistance in ohm
BD = 3 ; // Brush voltage drop in volt
R_s = 0.05 ; // Series field resistance in ohm
I_a1 = 85 ; // Armature current in A (case a)
I_a2 = 100 ; // Armature current in A (case b)
I_a3 = 40 ; // Armature current in A (case c)
S_1 = 600 ; // Speed in rpm at current I_a1
R_d = 0.05 ; // Divertor resistance in ohm

// Calculations
E_c2 = V_a - I_a2 * ( R_a + R_s ) - BD ; // BACK EMF in volt for I_a2
E_c1 = V_a - I_a1 * ( R_a + R_s ) - BD ; // BACK EMF in volt for I_a1

S_2 = S_1 * ( E_c2 / E_c1 ) * ( I_a1 / I_a2 ); // Speed in rpm at current I_a2

E_c3 = V_a - I_a3 * ( R_a + R_s ) - BD ; // BACK EMF in volt for I_a3

S_3 = S_1 * ( E_c3 / E_c1 ) * ( I_a1 / I_a3 ); // Speed in rpm at current I_a3

// When divertor is connected in parallel to R_s
R_sd = ( R_s * R_d ) / ( R_s + R_d ); // Effective series field resistance in ohm

E_c2_new = V_a - I_a2 * ( R_a + R_sd ) - BD ; // BACK EMF in volt for I_a2
S_2_new = S_1 * ( E_c2_new / E_c1 ) * ( I_a1 / ( I_a2 / 2 ) ); // Speed in rpm 
// at current I_a2

E_c3_new = V_a - I_a3 * ( R_a + R_sd ) - BD ; // BACK EMF in volt for I_a3
S_3_new = S_1 * ( E_c3_new / E_c1 ) * ( I_a1 / ( I_a3 / 2 ) ); // Speed in rpm 
// at current I_a3

// Display the results
disp(" Example 4-18 Solution : ");
printf(" \n a: S_2 = %d rpm \n", S_2 );
printf(" \n b: S_3 = %d rpm \n", S_3 );
printf(" \n c: The effect of the divertor is to reduce the series field current");
printf(" \n    (and flux) to half their previous values. ");
printf(" \n    S_2 = %d rpm ", S_2_new );
printf(" \n    S_3 = %d rpm \n", S_3_new );

printf(" \n    The results may be tabulated as follows : \n ");
printf(" \n     Case \t I_a in A \t S_o in rpm \t S_d in rpm ");
printf(" \n    ________________________________________________________");
printf(" \n      1    \t   %d       \t   %d         \t   ___ ", I_a1 , S_1  );
printf(" \n      2.   \t   %d       \t   %d         \t   %d ", I_a2 , S_2 , S_2_new );
printf(" \n      3.   \t   %d       \t   %d       \t   %d ", I_a3 , S_3 , S_3_new );
 
