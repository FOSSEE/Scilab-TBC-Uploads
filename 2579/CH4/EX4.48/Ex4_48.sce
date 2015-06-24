//Ex:4.48
clc;
clear;
close;
f=9*10^3;// frequency in MHz
y=300/f;// wavelength in m
Pr=5.4*10^-3;// received power in watt
Pt=20;// transmitted power in watt
Gr=15;// receiver gain in dB
Gr1=10^(Gr/10);// receiver gain
d=10;// distance in m
Gt=(Pr*(4*%pi*d)^2)/(Pt*Gr1*(y^2));// transmitter antenna gain
Gt1=10*log(Gt)/log(10);// transmitter antenna gain in dB
printf("The transmitter antenna gain = %f", Gt);
printf("\n The transmitter antenna gain in dB = %f dB", Gt1);