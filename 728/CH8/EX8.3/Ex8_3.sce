//Caption:Calculate (i)-input power in watts,(ii)-output power in watts, (iii)-efficiency 
//Exa:8.3
clc;
clear;
close;
n=2;
V_o=300;//in volts
I_o=20*10^-3;//in A
V_i=40;//in volts
J=1.25;//J(X')
P_dc=V_o*I_o;
P_ac=2*V_o*I_o*J/(2*n*%pi-%pi/2);
eff=(P_ac/P_dc)*100;
disp(P_dc,'Input power (in watts) =');
disp(P_ac,'Output power (in watts) =');
disp(eff,'Efficiency (in percent) =');