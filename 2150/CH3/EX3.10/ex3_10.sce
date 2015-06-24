// Exa 3.10
clc;
clear;
close;
// Given data
V1 = 18;// in V
V2 = 270;// in V
R = 1;// in K ohm
R = R*1000;// in ohm
V = (V1*R)/(V2+R);// in V
disp(V,"The open circuit voltage in volts is");
if V>=10 then
    disp("The zener diode is operating in the breakdown region.")
end
