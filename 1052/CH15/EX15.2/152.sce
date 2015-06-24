clc;
//Example 15.2
//page no 169
printf(" Example 15.2 page no 169\n\n");
//nitrogen gas is flowing in a duct,neglect compressibility effects
T=293//temperature,k
R=8314.4//gas constant
k=1.4//for nitrogen
M=28//molecular weight of nitrogen
c=sqrt(k*R*T/M)//speed of sound in nitrogen 
printf("\n speed of sound on nitrogen c=%f m/s",c);
v=82//flow velocity 
M_a=v/c//mach no.
printf("\n mach no. M_a=%f ",M_a);
