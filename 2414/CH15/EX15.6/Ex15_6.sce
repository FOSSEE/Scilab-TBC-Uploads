clc;
close();
clear();
//page no 504
//prob no. 15.6
c=3*10^8;  //speed of light
f=15*10^9;   //frequency
lembda=c/f;   //wavelength
mprintf('The wavelength of 15 GHz is, = %.2f m\n',lembda);

d=41*10^6;  //m
Pt=50;  //W
Gt=10^4;
Gr=10^5
Pr=lembda^2*Gr*Gt*Pt/((4*%pi)^2*d^2);
mprintf('The power density is ,Pr= %.1f pW',Pr*10^12);
