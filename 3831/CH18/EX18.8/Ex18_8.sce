// Example 18_8
clc;funcprot(0);
// Given data
m=3.50;// kg
T_1=20.0+273.15;// K
p_1=0.101325;// MPa
p_2=10.0;// MPa
R_u=8.3143;// kJ/kg.K
W_12=-100;// kJ

// Calculation
// (a)
M_krypton=83.80;
R_krypton=R_u/M_krypton;// kJ/kg.K
Q_12=0;// kJ
T_2=T_1-((W_12/(3*m*R_krypton/2)));// K
// (b)
S_p12=m*R_krypton*log(((T_2/T_1)^(5/2))*(p_1/p_2));// kJ/kg.K
printf("\n(a)The final temperature of the krypton gas after compression,T_2=%3.0f K \n(b)The entropy production of the compression process,1(S_p)2=%1.2f kJ/kg.K",T_2,S_p12);
// The answer provided in the textbook is wrong
