// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-11

clear; clc; close; // Clear the work space and console.

// Given data
T_a = 6.5; // Torque in dyne-centimeters
T_b = 10.6; // Torque in gram-centimeters
T_c = 12.2; // Torque in ounce-inches

// Calculations
T_a_Nm = T_a * 1.416e-5 * 7.0612e-3 ; // Torque T_a in N-m 
T_b_Nm = T_b * ( 1 / 72.01 ) * 7.0612e-3 ; // Torque T_b in N-m 
T_c_Nm = T_c * 7.0612e-3 ; // Torque T_c in N-m 

T_a_lbft = T_a * 1.416e-5 * 5.208e-3; // Torque T_a in lb-ft
T_b_lbft = T_b * ( 1 / 72.01 ) * 5.208e-3; // Torque T_b in lb-ft
T_c_lbft = T_c * 5.208e-3; // Torque T_c in lb-ft

// Display the results
disp("Example 4-11 Solution : ");
printf(" \n a : T = %.1e N-m ", T_a_Nm );
printf(" \n     T = %.1e lb-ft \n ", T_a_lbft );

printf(" \n b : T = %.2e N-m ", T_b_Nm );
printf(" \n     T = %.1e lb-ft \n ", T_b_lbft );

printf(" \n c : T = %.3e N-m ", T_c_Nm );
printf(" \n     T = %.2e lb-ft \n ", T_c_lbft );
