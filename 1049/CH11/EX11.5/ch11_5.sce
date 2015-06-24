clear;
clc;
u_r=10;
f=10000;//Hz
p=4*10^-8;//ohm-m
dl=(1/(2*%pi))*sqrt(p*10^7/(u_r*f));    printf("depth of heat of penetration=%.5f mm",dl*1000);
l=.12;//length of cylinder
t=20;//no of turns
I=100;
H=t*I/l;
P_s=2*%pi*H^2*sqrt(u_r*f*p*10^-7);    printf("\nheat generated per unit cylinder surface area=%.3f W/m^2",P_s);
d=.02;//diameter
P_v=4*H^2*p/(d*dl);    printf("\nheat generated per unit cylinder volume=%.0f W/m^3",P_v);
//answer of P_v varies as given in book as value of d is not taken as in formulae. 