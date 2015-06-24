//Ex:5.50
clc;
clear;
close;
f=2*10^9;// frequency in Hz
c=3*10^8;// speed of light in m/s
R1=50;// lengt in km
R=50*1000;// lengt in meter
y=c/f;// wavelength in m
GT=20;// gain in db
GR=20;// gain in db
Gt=10^(GT/10);// gain
Gr=10^(GR/10);// gain
pt=1;// power in watt
pr=(pt*Gt*Gr)*(y/(4*%pi*R))^2;// the received power in watt
V=sqrt(pr*R1);// voltage available at the terminals in micro volt
printf("voltage available at the terminals in micro volt = %f uV", V*10^6);