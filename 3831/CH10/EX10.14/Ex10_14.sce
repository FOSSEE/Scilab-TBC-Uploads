// Example 10_14
clc;funcprot(0);
// Given data
T_L=20+273.15;// K
T_0=T_L;// K
T_H=35.0+273.15;// K
COP_act=8.92;// Actual Coefficient of Performance

// Calculation
COP_Carnot=T_L/(T_H-T_L);// The coefficient of performance of a Carnot refrigerator or air conditioner 
epsilon_RAC=(COP_act/COP_Carnot)*100;// The second law efficiency in %
printf("\nThe second law availability efficiency of this air conditioner,epsilon_R/AC=%2.1f percentage",epsilon_RAC);
