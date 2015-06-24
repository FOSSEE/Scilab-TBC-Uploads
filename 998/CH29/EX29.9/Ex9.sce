//Ex:9
clc;
clear;
close;
v_tr=6.354;//Velocity component of satellite
y=0.015// wavelength for Ka band tx with frequency 20 gega hertz in meter
d_s=v_tr/y;//Doppler shift in khz
printf("Doppler shift =%f kHz",d_s);