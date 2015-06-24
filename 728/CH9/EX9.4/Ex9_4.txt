//Caption:Calculate (i)-critical voltage ,(ii)-breakdown voltage, (iii)-breakdown electric field
//Exa:9.4
clc;
clear;
close;
E_s=12.5;
E_o=8.85*10^-12;
E=E_o*E_s;
N=3.2*10^22;//per cubic meter
L=8*10^-6;//in m
q=1.6*10^-19;//in coulombs
V_c=q*N*L^2/(2*E);
V_bd=2*V_c;
E_bd=V_bd/L;
disp(V_c/10^3,'Critical voltage(in kV) =');
disp(V_bd/10^3,'Breakdown Voltage (in kV) =');
disp(E_bd,'Breakdown Electric field (in V/cm) =');