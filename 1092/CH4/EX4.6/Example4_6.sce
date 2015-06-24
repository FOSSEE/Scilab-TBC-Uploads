// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-6

clear; clc; close; // Clear the work space and console.

// Given data
T_old = 150 ; // Torque developed by a motor in N-m.
disp("Example 4-6")
disp("Given data : ")
printf("\n \t\t\t phi \t I_a \t T ");
printf("\n \t\t\t ________________________");
printf("\n Original condition \t 1 \t 1 \t 150 N-m ");
printf("\n New condition \t\t 0.9 \t 1.5 \t ? ");

// Calculation
T_new = T_old * ( 0.9 / 1 ) * ( 1.5 / 1 ) ; // New torque produced in N-m

// Display the result
printf("\n\n Solution : ")
printf("\n Using the ratio method, the new torque is the product ");
printf("\n of two new ratio changes : ");
printf("\n T = %.1f N-m ", T_new );
