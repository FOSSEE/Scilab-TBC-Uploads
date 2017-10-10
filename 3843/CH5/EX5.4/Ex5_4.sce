// Example 5_4
clc;funcprot(0);
// Given data
T_H=200+273;// K
T_L=20+273;// K
W=15;// kW

// Calculation
Q_H=W/(1-(T_L/T_H));//kW
Q_L=Q_H-W;// kW
printf("\nThe heat transfer from the high temperature reservoir,Q_H=%2.2f kW \nThe heat transfer from the high temperature reservoir,Q_L=%2.2f kW",Q_H,Q_L);
