//Ex:2.3
clc;
clear;
close;
c=3*10^8;// the speed of light in m/s
f=60*1000000;// frequency in Hz
y=c/f;// wavelength in vaccum in m
y1=y*0.98;// wavelength in air in m
printf("The wavelength in vaccum = %d meter", y);
printf("\n The wavelength in air = %f meter", y1);