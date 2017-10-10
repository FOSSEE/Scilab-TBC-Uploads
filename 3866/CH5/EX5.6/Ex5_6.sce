clc; clear; close;

C=50*(10^(-15));//in farad
Vdd=1.8;//in volts
f=250*10^(6);//in hertz
P=C*Vdd*Vdd*f;
disp(P,'dynamic power(in watts)=');
