// Exa 3.7
clc;
clear;
close;
format('v',5)
// Given data
R_L = 1;// in k ohm
R_L = R_L * 10^3;// in ohm
R = 270;// in ohm 
V = 18;// in V
V_Z= 10;// in V
V_L = (R_L/(R_L+R))*V;// in V
if V_L > V_Z then
    disp("As the value of V_L ("+string(V_L)+" V) is greater than the value of V_Z ("+string(V_Z)+" V), So")
disp("The zener diode is operating in the breakdown region.");
end
