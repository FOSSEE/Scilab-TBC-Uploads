// Example 14_1
clc;funcprot(0);
// Given data
T_L=20.0+273.15;// K
T_H=200.0+273.15;// K

// Solution
// (a)
n_T_carnot=(1-(T_L/T_H))*100;// The thermal efficiency of a Carnot engine in %
// (b)
COP_Carnot_HP=T_H/(T_H-T_L);// The coefficient of performance of a Carnot heat pump
// (c)
COP_Carnot_RAC=T_L/(T_H-T_L);// The coefficient of performance of a Carnot refrigerator
printf("\n(a)The thermal efficiency of a Carnot engine,(n_T)_Carnot=%2.0f percentage \n(b)The coefficient of performance of a Carnot heat pump,COP_Carnot HP=%1.2f \n(c)The coefficient of performance of a Carnot refrigerator or air conditioner,COP_Carnot R/AC=%1.2f",n_T_carnot,COP_Carnot_HP,COP_Carnot_RAC);
