//Ex:4.19
clc;
clear;
close;
y=1300*10^-9;// wavelemgth in m
yc=1200*10^-9;// cut off wavelength in m
rc=5*10^-6;// core diameter in m
n=1.5;// refractive index
R=1.2/100;// curve of radius in m
dmf=2*rc*((0.65)+0.434*(y/yc)^1.5+0.0149*(y/yc)^6);// mode field diameter
K=(2*%pi)/y;
Lm=-10*log(1-(K^4)*(n^4)*((3.95*10^-6)/(8*R^2))^6)/log(10);// macrobend loss
printf("The mode field diameter =%f um", dmf*10^6);
printf("\n The macrobend loss =%f dB", Lm);
printf("\n The answer is wrong in the textbook");