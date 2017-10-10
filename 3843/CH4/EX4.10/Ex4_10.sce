// Example 4_10
clc;funcprot(0);
// Given data
V=0.02;// m^3
T_1=50;// °C
P=400;// kPa
Q=50;// The amount of heat added in kJ
T_2=700;// °C
R=287;// J/kg.K
c_p=1.00;// kJ/kg.K

// Calculation
m=((P*10^3)*V)/(R*(T_1+273));// The mass in kg
W_paddle=Q-(m*c_p*(T_2-T_1));// The paddel-wheel work in kJ
printf("\nThe paddel-wheel work,W_paddle=%1.3f kJ",W_paddle);
