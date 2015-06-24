// Exa 2.17
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 9;// in V
R_C = 2;// in k ohm
R_C =R_C * 10^3;// in ohm
R_B = 50;// in k ohm
R_B = R_B * 10^3;//in ohm
Beta = 70;
R_E = 1;// in k ohm
R_E = R_E * 10^3;// in ohm
V_BEsat = 0.8;// in V
V_CEsat = 0.2;// in V
// Applying KVL to input loop, V_CC= I_B*R_B+V_BEsat+I_E*R_E or 
I_B= (V_CC-V_BEsat)/(R_B+(1+Beta)*R_E);// in A
// Applying KVL to output loop, V_CC= I_C*R_C+V_CEsat+I_E*R_E or
I_C= (V_CC-V_CEsat-I_B*R_E)/(R_C+R_E);// in A
I_Bmin= I_C/Beta;// in A
I_B= I_B*10^6;// in µA
I_Bmin= I_Bmin*10^6;// in µA
if I_B>I_Bmin then
    disp("Part (i) :")
    disp("As the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA)")
    disp("Hence the transistor is in saturation region")
end
disp("Part (ii) : ")
V_C= V_CC-I_C*R_C;// in V
disp(V_C,"The collector voltage in volts is : ")
h_FE= I_C/(I_B*10^-6);
disp(h_FE,"The minimum value of h_FE that will change the state of the transistor is : ")
