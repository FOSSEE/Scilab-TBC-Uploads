//Caption:Calculate (i)-breakdown voltage ,(ii)-breakdown electric field.
//Exa:9.11
clc;
clear;
close;
E_r=11.8;
E_o=8.85*10^-12;
N=3*10^21;//in per cubic meter
L=6.2*10^-6;//in meter
q=1.6*10^-19;//in coulombs
V_bd=q*N*L^2/(E_o*E_r);
E_bd=V_bd/L;
disp(V_bd,'Breakdown voltage (in volts) =');
disp(E_bd,'Breakdown electric field (in V/m) =');