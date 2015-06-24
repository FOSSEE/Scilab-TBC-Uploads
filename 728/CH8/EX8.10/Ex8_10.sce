//Caption:Calculate (i)-electron velocity,(ii)-dc transit time, (iii)-input voltage for maximum output voltage,(iv)-voltage gain in dB
//Exa:8.10
clc;
clear;
close;
V_o=900;//in volts
I_o=30*10^-3;//in A
f=8*10^9;//in Hz
d=0.001;//in m
l=0.04;//in m
R_sh=40*10^3;//in ohm
v_o=0.593*10^6*sqrt(V_o);
T_o=l/v_o;
Theeta_o=(2*%pi*f)*T_o;//Transit angles between cavities(in radian)
Theeta_g=(2*%pi*f)*d/v_o;//Average gap transit angle (in radian)
b=sin(Theeta_g/2)/(Theeta_g/2);
V_in_max=V_o*3.68/(b*Theeta_o);
//As, {J(X)/X=0.582}
A_r=b^2*Theeta_o*0.582*R_sh/(30*10^3*1.841);
disp(v_o,'Electron velocity (in m/s) =');
disp(T_o,'Dc Transit Time (in sec)=');
disp(V_in_max,'Maximum input voltage (in volts) =');
disp(A_r,'Voltage gain (in dB) =');