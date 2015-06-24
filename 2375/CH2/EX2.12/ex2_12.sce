// Exa 2.12
clc;
clear;
close;
format('v',6)
// Given data
V_CE = 2.5;// in V
Beta = 100;
R2 = 10 * 10^3;// in ohm
R4 = 300;// in ohm
V_CC = 5;// in V
I_C = 1 * 10^-3;// in A
V_BE= 0.6;// in V
// Applying KVL to collector circuit, we get
// V_CC = I_C*R3 + V_CE + I_E*R4                (i)
 I_B = I_C/Beta;// in A
 I_E = (I_C + I_B);// in A
 // On substituting the value of I_B and I_E in eq (i), we get
 R3= (V_CC-V_CE-I_E*R4)/I_C;// in ohm
V_B= I_E*R4+V_BE;// in V
// But also V_B= R2/(R1+R3)*V_CC, so
R1= R2*V_CC/V_B-R2;// in ohm
R1= R1*10^-3;// in k ohm
R3= R3*10^-3;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
disp(R3,"The value of R3 in kΩ is : ")
