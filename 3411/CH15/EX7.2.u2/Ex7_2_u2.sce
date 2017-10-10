//Example 7_2_u2
clc();
clear;
//To calculate the diffusion current density
Dn=22.5 //units in cm^2/sec
e=1.6*10^-19  //units in coulombs
dn=(1*10^18)-(7*10^17)
dx=0.1            //units in cm
Jndiff=e*Dn*(dn/dx)          //units in A/cm^2
printf("The diffusion current density is Jn,diff=%.1f A/cm^2",Jndiff)
