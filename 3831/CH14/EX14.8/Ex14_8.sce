// Example 14_8
clc;funcprot(0);
// Given data
T_g=100;// °C
T_e=5.00;// °C
T_a=20.0;// °C

// Calculation
COP_Car=((T_e+273.15)/(T_g+273.15))*((T_g-T_a)/(T_a-T_e));// The Carnot absorption refrigeration coefficient of performance
printf("\nThe Carnot absorption refrigeration coefficient of performance,(COP)_Carnot absorption refrigerator=%1.2f",COP_Car);
