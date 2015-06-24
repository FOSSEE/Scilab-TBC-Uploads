// Exa 6.29
format('v',6)
clc;
clear;
close;
// Given data
V_CC = 9;// in V
V_BE = 0.8;// in V
V_CE = 0.2;// in V
R_B = 50;// in kΩ
R_C=2;// in kΩ
R_E = 1;// in kΩ
Beta=70;
// Applying KVL to input loop, V_CC= I_B*R_B +V_BE +I_E*R_E
// V_CC- V_BE= (R_B+R_E)*I_B + R_E*I_C          (i)
// Applying KVL to output loop, V_CC= R_C*I_C +V_CE +I_C*R_E +I_B*R_E
//I_B = ((V_CC- V_CE)-(R_C+R_E)*I_C)/R_E         (ii)
// From eq (i) and (ii)
I_C= ( (V_CC- V_BE)-(R_B+R_E)* (V_CC- V_CE)/R_E)/(1-(R_B+R_E)*(R_C+R_E));// in mA
I_B = ((V_CC- V_CE)-(R_C+R_E)*I_C)/R_E// in mA
I_Bmin= I_C/Beta;// in mA
if I_B>I_Bmin then
    disp("Since the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA)")
    disp("So the transistor is in saturation ")
end
V_C= V_CC-I_C*R_C;// in V
disp(V_C,"The value of collector voltage in volts is : ")
Beta= I_C/I_B;
disp(Beta,"The minimum value of beta that will change the state of the trasistor is : ")
