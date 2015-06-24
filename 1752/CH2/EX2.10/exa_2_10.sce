//Exa 2.10
clc;
clear;
close;
//given data
format('v',9)
d=1.2*10^-3;// in m
r=d/2;// in m
rc=1.8*10^-3;// in m
T1=100;// in degree C
T_infinite=30;// in degree C
k=0.3;// in W/mK
h=10;// in W/m^2K
L=1;// in m
ke=5.1*10^7;
q=(T1-T_infinite)/(log(rc/r)/(2*%pi*k)+1/(2*%pi*rc*h));// in W/m
// Volume of wire for one meter length
vol= %pi*r^2*L;// in m^3
disp("in steady state heat transfer process, the heat produced by the wire is dissipated to surrounding.")    
// Heat produced per unit volume of the wire
HeatProduced= q/vol;// in w/m^2
// Formula HeatProduced= I^2*R = I^2/ke
I=sqrt(HeatProduced*ke);// in amp/m^2
// Area of wire
A= %pi*r^2;
// so current carrying capacity of the given wire
Current= I*A;
disp(Current,"The current carried by the copper wire in amphere")

