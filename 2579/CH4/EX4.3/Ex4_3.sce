//Ex:4.3
clc;
clear;
close;
y=3;// wavelength in m
d=1;// in m
N=10;// no. of turns
s=0.75;// in m
Gp=15*(%pi^2*(1/y)^2*(10*(s/y)));// power gain
GdB=10*log(Gp)/log(10);// power gain in dB
Bw=52/(%pi*(1/y)*sqrt(10*(s/y)));// beamwidth in degree
BW=70/20;// beamwidth when d=20*y(wavelength)
printf("The power gain = %f dB", GdB);
printf("\n The beamwidth = %f degree", Bw);
printf("\n The beamwidth when d is 20*y = %f degree", BW);