// Exa 4.23
format('v',5)
clc;
clear;
close;
// Given data
V_CC = 24;// in V
V_CE= 12;// in V
Rc = 5;// in k ohm
Rc = Rc * 10^3;// in ohm
Beta = 100;
I_C = 2;// in mA
I_C = I_C * 10^-3;// in A
//Applying KVL to the output section, V_CC = (I_C*R_C) + V_CE + (I_E*R_E) or
// (V_CC-V_CE)/I_C =Rc + R_E*(1+(1/Beta))   (on putting I_E= I_C+I_B and I_B = I_C/Beta)
R_E = (((V_CC-V_CE)/I_C)-Rc)*(1/(1+(1/Beta)));// in ohm
disp(R_E,"The value of R_E in ohm is");
