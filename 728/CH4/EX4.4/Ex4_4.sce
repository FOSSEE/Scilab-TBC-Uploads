//Caption:Calculate charcteristic impedance & velocity of propagation.
//Exa:4.4
clc;
clear;
close;
b=0.3175;//in cm
d=0.0539;//in cm
c=3*10^8;//in m/s
e_r=2.32;
Z_o=60*log(4*b/(%pi*d))/sqrt(e_r);//in ohms
V_p=c/sqrt(e_r);//in m/s
disp(Z_o,'Charcteristic impedance (in ohms) =');
disp(V_p,'Velocity of propagation (in m/s) =');