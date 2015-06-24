//Ex:2.13
clc;
clear;
close;
G=40;// power gain in dB
Gt=40;// power gain in dB
Gr=40;// power gain in dB
G1=10^(G/10);// power gain
Gt1=10^(Gt/10);// power gain
Gr1=10^(Gr/10);// power gain
f=10*10^3;// frequency in MHz
y=300/f;// wavelength in m
Wt=1;// Transmitter in Watts
r=30*10^3;// range of link in m
Wr=(Wt*G1^2*y^2)/(4*%pi*r)^2;// receive power in Watts
printf("The receive power = %f*10^-6 Watts", Wr*10^6);