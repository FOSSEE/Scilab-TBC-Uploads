//Ex:4.4
clc;
clear;
close;
f=300*10^6;// frequency in Hz
c=3*10^8;// the speed of light in m/s
y=c/f;// wavelength in m
GdB=60;// gain in dB
G=10^(GdB/10);// gain
D=sqrt(G/6)*y;// diameter in m
D1=3.28*D;// diameter in m
printf("The dish diameter = %d meter", D);
printf("\n The dish diameter = %d ft.", D1);