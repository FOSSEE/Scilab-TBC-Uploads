// Exa 8.4
clc;
clear;
close;
format('v',5)
// Given data
I_Don = 10;// in mA
V_GS = -12;// in V
V_Ton = -3;// in V
if V_GS<0 then
    disp("Since the value of V_GS is negative, hence the device is P-channel")
end
K = I_Don/((V_GS-V_Ton)^2);// in mA/V
V_GS = -6;// in V
// The drain current,
I_D = K*( (V_GS-V_Ton)^2 );// in mA
disp(I_D,"The value of I_D in mA is");

// Note: The answer in the book is not accurate.
