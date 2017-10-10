// Exa 2.2
clc;
clear;
close;
// Given data 
unCox= 100;// in µA/V^2
unCox= unCox*10^-6;// in A/V^2
L= 1;//in µm
L= L*10^-6;// in m
W=10;// in µm
W=W*10^-6;// in m
V_GS= 1.5;// in V
Vt= 0.7;// in V
// For V_DS= 0.5 V
V_DS= 0.5;// in V
if V_DS<= (V_GS-Vt) then
    I_D= unCox*W/L*[(V_GS-Vt)*V_DS-V_DS^2/2];
    disp(I_D*10^6,"The device is in triode region. SO the drain current in the triode region in µA is : ")
else
    I_D= unCox*W/(2*L)*(V_GS-VT)^2
    disp(I_D*10^6,"The device is in saturation region. SO the drain current in the saturation region in µA is : ")      
end
// For V_DS= 0.9 V
V_DS= 0.9;// in V
if V_DS<= (V_GS-Vt) then
    I_D= unCox*W/L*[(V_GS-Vt)*V_DS-V_DS^2/2];
    disp(I_D*10^6,"The device is in triode region. So the drain current in the triode region in µA is : ")
else
    I_D= unCox*W/(2*L)*(V_GS-Vt)^2
    disp(I_D*10^6,"The device is in saturation region. So  drain current in the saturation region in µA is : ")      
end




