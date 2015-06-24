clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-20.4 Page No.436\n');

//Thrust factor
Ft=300;
Cs=2320;
Ft_Cs=Ft/Cs;

Y=(0.17-Ft_Cs)*(1.45-1.31)/(0.17-0.11)+1.31;

mprintf('\n Thrust factor = %f ',Y);

V=1.2;
X=0.56;
R=1000;

P=V*X*R+Y*Ft;

Cd=3350;
Pd=1095;
k=3;

Ld=(Cd/Pd)^k*10^6;

mprintf('\n Life = %f revolutions.',Ld);
