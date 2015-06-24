//Exa:1.7
clc;
clear;
close;
V=440;//in volts
N_o=2000;//in rpm
E_bo=440;//in volts
N_f=1000;//in rpm
N_h=1050;//in rpm
E_bf=E_bo*N_f/N_o//in volts
E_b=E_bo*N_h/N_o;//in volts
v=(E_b-E_bf)*2;
disp(v,'Armature voltage drop at full load (in volts)=')