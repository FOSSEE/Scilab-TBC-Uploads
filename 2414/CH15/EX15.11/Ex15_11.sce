clc;
close();
clear();
//page no 511
//prob no. 15.1
//misprinted example number
c=3*10^8;  //speed of light
f=10*10^9;   //frequency
lembda=c/f;   //wavelength
mprintf('The wavelength of 2GHz is, = %.2f m\n',lembda);
D=12;  //m
Ap=%pi*D^2/4;
mprintf(' (a)The physical area is ,Ap= %.2f m^2  \n',Ap);
n1=.7;   //efficiency
Ae=n1*Ap;
mprintf('  The effective capture area is ,Ae= %.2f m^2',Ae);
G=4*%pi*Ae/lembda^2;
mprintf('\n (b) The gain is ,G= %i',G);
GdB=10*log10(G);
mprintf('\n The gain(dB) is ,GdB= %.1f dB',GdB);
theta_3dB=70*lembda/D;
mprintf('\n (c) The 3 dB beamwidth = %.3f degrees',theta_3dB);
