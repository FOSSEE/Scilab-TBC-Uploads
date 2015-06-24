// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 4: DC Dynamo Torque Relations-DC Motors
// Example 4-23

clear; clc; close; // Clear the work space and console.

// Given data
P = 50 ; // Power rating of the servo-motor in W
S_rpm = 3000 ; // Full-load speed of the servo-motor in rpm

// Calculations
S_rad_per_sec = S_rpm * 2 * %pi / 60 ; // Full-load speed of the servo-motor 
// in rad/s
omega = 314.2 ; // Angular frequency in rad/s
T_Nm = P / omega ; // Output torque in Nm
T_ounceinch = T_Nm * ( 1 / 7.0612e-3 ) ; // Output torque in oz.in

// Display the results
disp("Example 4-23 Solution : ");
printf(" \n a: Speed in rad/s = %.1f rad/s \n ", S_rad_per_sec );
printf(" \n b: T = %.4f N-m \n ", T_Nm );
printf(" \n c: T = %.1f oz.in \n ", T_ounceinch );
printf(" \n d: Both answers are the same."); 


