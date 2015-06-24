//Ex:9.12
clc;
clear;
close;
Vs=3*10^4;// saturation in m/s
W=25*10^-6;// depletion layer width in m
tr=W/Vs;// transit time in sec
f=0.35/tr;// max 3 dB bandwidth Hz
f1=f/10^6;// max 3 dB bandwidth Hz
printf("The max 3 dB bandwidth =%d MHz", f1);
printf("\n The answer is wrong in the textbook");