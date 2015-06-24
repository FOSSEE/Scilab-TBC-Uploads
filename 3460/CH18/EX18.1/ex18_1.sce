clc;
clear all;
Vp=50;//given peak to peak envelope voltages
Vr=1;//given voltage of envelope ripple in volts
Sc=20*log10(Vp/Vr);//carrier supression in db
disp(Sc,'carrier supression in dB is=');

