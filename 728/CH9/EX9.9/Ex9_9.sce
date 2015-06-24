//Caption:Calculate the resonant frequency & efficiency.
//Exa:9.9
clc;
clear;
close;
L_p=0.5*10^-9;//in H 
C_j=0.5*10^-12;//in F
V_bd=100;//breakdown voltage (in volts)
I_bias=100*10^-3;//bias current(in A) 
I_rf_peak=0.8;
R_l=2;
f=1/(2*%pi*sqrt(L_p*C_j));
eff={(0.5*I_rf_peak^2*R_l)/(V_bd*I_bias)}*100;
disp(f*10^-9,'Resonant frequency (in GHz) =');
disp(eff,'Efficiency (in percentage) =');