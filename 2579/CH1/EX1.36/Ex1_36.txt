//Ex:1.36
clc;
clear;
close;
c=3*10^8;// the speed of light in m/s
ur=1;// relative permittivity
Er=4;// relative permeability
vp=c/sqrt(ur*Er);// velocity of a plane wave
printf("The velocity of a plane wave = %f*10^8 m/s", vp/10^8);