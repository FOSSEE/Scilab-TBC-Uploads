//Caption:Calculate the minimum voltage needed to GUNN effect
//Exa:9.7
clc;
clear;
close;
volt_grad=3.3*10^3;//voltage gradient
L=5*10^-4;//in drift length
V_min=volt_grad*L;//in volts
disp(V_min,'Minimum voltage needed (in Volts) ='); 