clc;
warning("off");
printf("\n\n example5.11 - pg176");
// given
T=0+273.15;  //[K] - temperature in Kelvins
pa2=1.5;  //[atm] - partial presuure of a at point2
pa1=0.5;  //[atm] - partial pressure of a at point 1
z2=20;  //[cm] - position of point 2 from reference point
z1=0;  //[cm] - position of point1 from reference point
p=2;  //[atm] - total pressure
d=1;  //[cm] - diameter
D=0.275;  //[cm^2/sec] - diffusion coefficient
A=(%pi*((d)^2))/4;
R=0.082057;  //[atm*m^3*kmol^-1*K^-1] - gas constant
// (a) using the formula Na/A=-(D/(R*T))*((pa2-pa1)/(z2-z1))
Na=(-(D/(R*T))*((pa2-pa1)/(z2-z1)))*(A)/(10^6);
printf("\n\n Na=%ekmol/sec\n The negative sign indicates diffusion from point 2 to point 1",Na);
pb2=p-pa2;
pb1=p-pa1;
// (b) using the formula Na/A=((D*p)/(R*T*(z2-z1)))*ln(pb2/pb1)
Na=(((D*p)/(R*T*(z2-z1)))*log(pb2/pb1))*(A)/(10^6);
printf("\n\n Na=%ekmol/sec",Na);
printf("\n The induced velocity increases the net transport of A by the ratio of 10.6*10^-10 to 4.82*10^-10 or 2.2 times.This increse is equivalent to 120 percent");