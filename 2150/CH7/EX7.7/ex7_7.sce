// Exa 7.7
clc;
clear;
close;
// Given data
V_GS = 3;// in V
V_GSth=2;// inV
// Part (a)
V_DS= 0.5;// in V
if V_DS<(V_GS-V_GSth) then
    disp("Transistor is in ohmic region")
else
    disp("Transistor is in saturation region")
end

// Part (b)
V_DS= 1;// in V
if V_DS<(V_GS-V_GSth) then
    disp("Transistor is in ohmic region")
else
    disp("Transistor is in saturation region")
end

// Part (c)
V_DS= 5;// in V
if V_DS<(V_GS-V_GSth) then
    disp("Transistor is in ohmic region")
else
    disp("Transistor is in saturation region")
end
