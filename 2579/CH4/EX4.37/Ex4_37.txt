//Ex:4.37
clc;
clear;
close;
r=0.35;// distance in m
f=9*10^3;// frequenc in MHz
y=300/f;// wavelength in m
Wtr=8.9;
wtr=10^(Wtr/10); 
wrt=1/wtr;
D=(4*%pi*r/y)*(sqrt(wrt));// gain of the horn antenna
d=10*log(D)/log(10);// gain of the horn antenna in dB
y1=10;// in m
Gp=1000;
D=sqrt((Gp*y1^2)/6);// diameter in m
HPBW=(58*y1)/D;// the half power band width in degree
printf("The gain of the horn antenna = %f dB", d);
printf("\n The half power band width = %f degree", HPBW);