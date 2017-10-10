// Example 1_1
clc;funcprot(0);
// Given data
V_final=120;// mph
V_initial=85;// mph
t=5;// seconds

// Calculation
a=(V_final-V_initial)/t;// miles/(hour/seconds)
V_initial=V_initial*(5280/3600);// feet/second
V_final=V_final*(5280/3600);// feet/second
a=(V_final-V_initial)/t;// The acceleration in ft/s^2
printf("\nThe acceleration of the car,a=%2.1f ft/s^2",a);
