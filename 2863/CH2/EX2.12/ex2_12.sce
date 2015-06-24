//chapter 2
//For Half wave Dipole
//Hphi=Im/(2*pi*r)*cos(pi/2*cos(theta)/sin(theta))
//Rrad=73 ohm
Hphi=5*10^-6;
r=2*10^3;
Im=(5*10^-6)*(4*(%pi)*10^3);
Prad=73*(Im/sqrt(2))^2;
printf("the radiated power is %gW",Prad);
