// Exa 4.19
format('v',6)
clc;
clear;
close;
// Given data
h_FE = 100;
R = 50;// in k ohm
R = R * 10^3;// in ohm
R1 = 3;// in k ohm
R1 = R1 * 10^3;// in ohm
V1 = 10;// in V
V2 = 5;// in V
V_BE = 0.8;// in V
V_CE = 0.2;// in V
//Applying KVL in input side, V2 - (R*I_B)-V_BE = 0;
I_B = (V2-V_BE)/R;// in A
I_B = I_B * 10^3;// in mA
//Applying KVL to output side, V1 - (R1*I_C) - V_CE = 0;
I_C = (V1-V_CE)/R1;// in A
I_C = I_C * 10^3;// in mA
I_Bmin = I_C/h_FE;// in mA
if I_B>I_Bmin then
    disp("As the value of I_B ("+string(I_B)+" mA) is greater than the value of I_Bmin ("+string(I_Bmin)+" mA),")
    disp("So the transistor will be in saturation region.")
end
