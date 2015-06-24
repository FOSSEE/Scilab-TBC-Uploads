//Example 7_2_u2
clc();
clear;
//To calculate the diffusion current density
Dn=22.5
e=1.6*10^-19  //units in eV
dn=(1*10^18)-(7*10^17)
dx=0.1
Jndiff=e*Dn*(dn/dx)          //units in A/cm^2
printf("The diffusion current density is Jn,diff=%.1f A/cm^2",Jndiff)
