// Exa 2.14         (Printed As Exa 2.13)
clc;
clear;
close;
format('v',6)
// Given data
Beta_dc = 100;
R_C = 0.5*10^3;// in ohm
V_BB = 0;// in V
V_BE= 0.7;// in V
R_B = 44 * 10^3;// in k ohm
R_E = 1 * 10^3;// in ohm
V_EE = -15;// in V
V_CC = 15;// in V
// Applying KVL to base circuit
// V_CC= R_B*I_B+V_BE+(1+Beta_dc)*R_E*I_B or
I_B= (V_CC-V_BE)/(R_B+(1+Beta_dc)*R_E);// in A
I_C= I_B*Beta_dc;// in A
I_E= (1+Beta_dc)*I_B;// in A
// Applying KVL to collector circuit
// V_CC = R_C*I_C + V_CE + R_E*I_E + V_EE or
V_CE= V_CC-V_EE-I_C*R_C-I_E*R_E;// in V
Vo2= I_E*R_E-V_CC;// in V
// But V_CE= V01-Vo2, so
Vo1= V_CE+Vo2;// in V
disp(Vo1,"The value of Vo1 in volts is : ")
disp(Vo2,"The value of Vo2 in volts is : ")
// Part (ii) New Value of R_C to make Vo1= 0 V
Vo1= 0;
// V_CC= I_C*R_C+Vo1-Vo2+I_E*R_E-V_EE or
R_C= (V_CC-V_EE-Vo1+Vo2-I_E*R_E)/(I_C);// in ohm
R_C= R_C*10^-3;// in k ohm
disp(R_C,"The value of R_C in kΩ is : ")
// Part (iii) New value of R_E to get Vo2= 0;
Vo2= 0;// in V
// Formula Vo2= I_E*R_E-V_CC, so
R_E= (Vo2+V_CC)/I_E;// in ohm
R_E= R_E*10^-3;// in kohm
format('v',4)
disp(R_E,"The value of R_E in kΩ is :")

// Note : The calculated value of R_C in the book is not correct





