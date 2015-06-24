//Ex:4.6
clc;
clear;
close;
V=10;//pk-pk voltage
r=1000;//ohms
I_pk=V/r;//in Amps
I_rms=0.353*I_pk*1000;//milliamps
printf("RMS current of 10V peak-peak voltage = %f mA",I_rms);