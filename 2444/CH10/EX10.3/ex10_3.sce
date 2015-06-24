// Exa 10.3
clc;
clear;
close;
format('v',7)
// Given data
V_CC = 12;// in V
R_B = 20;// in k ohm
R_B = R_B * 10^3;// in ohm
R_C = 2;// in k ohm
R_C = R_C * 10^3;// in ohm'
C = 0.1;// in µF
C = C * 10^-6;// in F
V_CEsat = 0.2;// in V
V_BEsat = 0.8;// in V
Beta = 50;// unit less
T =R_B*C*log( (2*V_CC-V_BEsat)/(V_CC-V_BEsat) );// in S
disp(T*10^3,"The input pulse in ms is");
I_Csat = (V_CC-V_CEsat)/R_C;// in A
I_Csat = I_Csat * 10^3;// in mA
// Beta = h_fe;
I_Bmin = I_Csat/Beta;// in mA
I_B = (V_CC-V_BEsat)/R_B;// in A
I_B = I_B * 10^3;// in mA
if I_B>I_Bmin then
    disp("The value of I_B ("+string(I_B)+" mA) is greater than the value of  I_Bmin ("+string(I_Bmin)+" mA).");
    disp("Hence the transistor in saturaion ")
end
