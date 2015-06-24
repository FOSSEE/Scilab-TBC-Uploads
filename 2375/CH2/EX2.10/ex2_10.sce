// Exa 2.10
clc;
clear;
close;
format('v',6)
// Given data
bita = 75;
V_CC = 9;// in V
V_CEsat = 0.2;// in V
V_BEsat = 0.8;// in V
R_C = 2;// in k ohm
R_C = R_C * 10^3;// in ohm
R_E = 1;// in k ohm
R_E = R_E * 10^3;// in ohm
R_B = 50;// in k ohm
R_B = R_B * 10^3;// in ohm
I_Csat= poly(0,'I_Cs')
// Part (i) : To check the region of operation
// Applying KVL to collector circuit, we get : V_CC = (R_C*I_Cs) + V_CEsat + (I_E*R_E)        (i)
 I_E = I_Csat;// in A (approximate)
 // From eq(i)
I_Csat= (R_C*I_Csat) + V_CEsat + (I_E*R_E)-V_CC;// in A
I_Csat= roots(I_Csat);// in A
I_Bmin= I_Csat/bita;// in A
I_Bmin= I_Bmin*10^6;// in µA
disp("Part (i)")
disp(I_Bmin,"The minimum value of  I_B in µA is : ")
I_B= poly(0,'I_B')
I_E= (1+bita)*I_B;// in A
// Applying KVL to input circuit, we get
// V_CC = I_B*R_B+V_BEsat+I_E*R_E or
I_B= I_B*R_B+V_BEsat+I_E*R_E-V_CC;// in A
I_B= roots(I_B);// in A
I_B= round(I_B*10^6);// in µA
disp(I_B,"The value of I_B in µA is : ")
if I_B>I_Bmin then
    disp("As the value of I_B is greater than the value of I_B min")
    disp("Hence the trasistor is definitely in the saturation region")
end
I_E= (1+bita)*I_Bmin;// in µA
V_C= V_CEsat+I_E*10^-6*R_E;// in V
disp(V_C,"Part (ii) : The value of V_C in volts is : ");
bita_min= I_Csat/(I_B*10^-6);
disp(bita_min,"Part (iii) : The minimum value of bita that will change the state of transistor is : ")
