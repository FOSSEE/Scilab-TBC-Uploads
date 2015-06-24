//Exa 5.1
clc;
clear;
close;
// given data
Area_hysteresis_curve=9.3;//in cm^2
Cordinate1_1cm=1000;//in AT/m
Cordinate2_1cm=0.2;//in T
//Part (i)
hysteresis_loss=Area_hysteresis_curve*Cordinate1_1cm*Cordinate2_1cm;//in J/m^3/cycle
disp(hysteresis_loss,"Hysteresis loss/m^3/cycle in J/m^3/cycle: ");
//Part (ii)
f=50;//in Hz
H_LossPerCubicMeter=hysteresis_loss*f;//in Watts
disp(H_LossPerCubicMeter*10^-3,"Hysteresis loss Per Cubic Meter in KWatts :");
