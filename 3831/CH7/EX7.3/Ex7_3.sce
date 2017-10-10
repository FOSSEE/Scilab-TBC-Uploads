// Example 7_3
clc;funcprot(0);
// Given data
T_H=95;// °F
T_L=70;// °F

// Solution
COP=(T_L+459.67)/((T_H+459.67)-(T_L+459.67));// Coefficient of performance
printf('\nThe Coefficient of performance,COP_Carnot air conditioner=%2.0f',COP);
