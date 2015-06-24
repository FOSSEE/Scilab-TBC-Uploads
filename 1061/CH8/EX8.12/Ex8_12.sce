//Ex:8.12
clc;
clear;
close;
ni=0.09;// normal efficiency
d=2*2.54;// separation distance in cm
x=0.2;// divergence angle in radians
vf=2.0;// forward voltage in volts
i_f=65*10^-3;// forward current in amp
pi=vf*i_f;// input power in Watt
po=ni*pi;// output power in Watt
H=4*po/(3.14*d^2*x^2);// irradiance in watt/cm^2
H1=H*1000;// irradiance in mwatt/cm^2
printf("The irradiance =%f mwatt/cm^2 ", H1);