//Ex:2.43
clc;
clear;
close;
Rl=1.5;// loss resistance in ohm
// Rr=80*pi^2*(l/y)^2=(80*pi^2*(y/15)^2)/y^2=80*pi^2/225
Rr=80*%pi^2/225;// the radiation resistance of the antenna in ohm
n=Rr/(Rr+Rl);// the efficiency factor
// the effective aperture of the antenna is given by
// Ae=V^2/4*S*Rr
// max emf induced, V=E*l volt
// Poynting vector, S=E^2/zo W/m^2, where zo=120*pi ohm
// Ae=(E*l)^2/(4*(E^2/zo)*Rr)=l^2*zo/(4*Rr), l=y/15
// Ae=((y/15)^2*120*pi)/(4*3.5)=0.1196*y^2
// the directivity, D=4*pi*Ae/y^2=(4*pi/y^2)*0.1196*y^2
D=4*%pi*0.1196;// the directivity
G=n*D;// the gain of the dipole
Rt=Rr+Rl;// the terminal resistance in ohm
x=4*%pi/D;// the beam solid angle in sreradian
printf("The radiation resistance of the anteenna = %f ohm", Rr);
printf("\n The effective aperture, Ae=0.1196*y^2, where y is wavelength");
printf("\n The directivity = %f", D);
printf("\n The gain of the dipole = %f", G);
printf("\n The terminal resistance = %d ohm", Rt);
printf("\n The beam solid angle = %f sreradian", x);

