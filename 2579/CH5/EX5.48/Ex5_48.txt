//Ex:5.48
clc;
clear;
close;
A=12.5;// cross section area of the target in m^2
pr=10^-13;// max received power in Watt
Gr=2000;// receiver gain
Gt=2000;// transmitter gain
y=16/100;// wavelength in m
pt=250*10^3;// transmitted power in Watts
Rmax=((pt*Gt^2*y^2*A)/((4*%pi)^3*pr))^(1/4);// max range in m
Rmax2=sqrt(2)*Rmax;// max range in m
printf("The max range Rmax1 = %f km", Rmax/1000);
printf("\n The max range Rmax2 = %f km", Rmax2/1000);