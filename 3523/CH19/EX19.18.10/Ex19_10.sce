clear all
clc
close

a=25*10^-6;//jet radius in m
b=750*10^-6;//concentric cylinder of radius
q=50*10^-12;//charge
l = 120*10^-6;//length of jet inside the cylinder
Epsilon_o = 8.84*10^-12;
C=(2*%pi*Epsilon_o*l)/log(b/a);
printf("capacitance is %e F",C)
r=50*10^-6;//drop radius
Vp = (3*a^2*log(b/a)*q)/(8*%pi*Epsilon_o*r^3);
printf("min voltage required for generating drops %f kV",Vp/1e3)
