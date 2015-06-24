// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-13

clear; clc; close; // Clear the work space and console.

// Given data
V_a = 120 ; // Rated terminal voltage of dc shunt notor in volt
R_a = 0.2 ; // Armature resistance in ohm
BD = 2 ; // Brush drop in volt
I_a = 75 ; // Full load armature current in A
I_a_new = 1.5 * I_a ; // armature current in A at 150% rated load 

E_c_a = 0 ; // Back EMF at starting
E_c_b = ( 25 / 100 ) * V_a ; // Back EMF in volt is 25% of Va @ 150% rated load
E_c_c = ( 50 / 100 ) * V_a ; // Back EMF in volt is 50% of Va @ 150% rated load

// Calculations
R_s_a = ( V_a - E_c_a - BD ) / I_a_new - R_a ; // Ra tapping value at starting 
// in ohm
R_s_b = ( V_a - E_c_b - BD ) / I_a_new - R_a ; // Ra tapping value @ 25% of Va 
//  in ohm
R_s_c = ( V_a - E_c_c - BD ) / I_a_new - R_a ; // Ra tapping value @ 50% of Va 
// in ohm
E_c_d = V_a - ( I_a * R_a + BD ) ; // Back EMF @ full-load without starting resistance

// Display the results
disp(" Example 4-13 Solution : ");
printf(" \n a: At starting, Ec is zero ");
printf(" \n    Rs = %.2f ohm \n ", R_s_a );

printf(" \n b: When back EMF in volt is 25 percent of Va @ 150 percent rated load ");
printf(" \n    Rs = %.3f ohm \n ", R_s_b );

printf(" \n c: When back EMF in volt is 50 percent of Va @ 150 percent rated load ");
printf(" \n    Rs = %.3f ohm \n ", R_s_c );

printf(" \n d: Back EMF at full-load without starting resistance ");
printf(" \n    Ec = %d V ", E_c_d );
