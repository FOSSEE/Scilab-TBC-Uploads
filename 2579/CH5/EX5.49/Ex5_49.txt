//Ex:5.49
clc;
clear;
close;
f=30;// frequency in MHz
y=300/f;// wavelength in m
l=y/2;// in m
I=10;// current in amp
Gt=1.5;// gain
Gr=1.5;// gain
Pr=10^-3;// receiver power in Watts
Ptmax=(80*%pi^2*I^2*l^2)/y^2;// max transmitter power in watts
Ptav=Ptmax/2;// average power in Watts
d=(Ptav*Gt*Gr*y^2)/(16*%pi*%pi*Pr);// max allowable distance in m
printf("The max allowable distance = %f km", d/1000);
printf("\n The answer is wronge in the textbook");