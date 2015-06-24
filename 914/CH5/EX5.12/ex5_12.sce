clc;
warning("off");
printf("\n\n example5.12 - pg178");
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
k=0.75;
// using the formula (Na/A)=-(D/(R*T*(z2-z1)))*ln((1-(pa2/p)*(1-k))/(1-(pa1/p)*(1-k)))
NabyA=-(D/(R*T*(z2-z1)))*(2*0.7854)*log((1-(pa2/p)*(1-k))/(1-(pa1/p)*(1-k)))/(10^6);
printf("\n\n (Na/A)=%ekmol/sec",NabyA);
printf("\n Note that this answer is larger than the rate for equimolar counter diffusion but smaller tahn the rate for diffusion through a stagnant film.Sometimes the rate for diffusin through a stagnant film can be considered as an upper bound, if k ties between zero and one");

