// Example 14_10
clc;clear;funcprot(0);
//Given data
omega_a=1;// Unit Speed

// Calculation
omega_b=2*omega_a;// Speed
bhp_ratio=(omega_b/omega_a)^3;
printf('\nThe power to the pump motor must be increased by a factor of %0.0f.',bhp_ratio);
