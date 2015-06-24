//Caption:Find the regulation of the machine
//Exa:14.5
clc;
clear;
close;
Vf=400//Full load voltage(in volts)
Vr=480//No load voltage(in volts)
Re=(Vr-Vf)*100/Vf
disp(Re,'Regulation of the machine(in %)=')