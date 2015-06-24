clc;
close();
clear();
//page no 518
//prob no. 16.1
c=3*10^8;  //speed of light
Pt=5    //W
GtdB=13;  //dB
GrdB=17;  //dB
d=80*10^3;  //metre
f=3*10^9;   //frequency
lembda=c/f;   //wavelength
mprintf('The wavelength is, = %.1f m\n',lembda);

Gt=10^(GtdB/10);
Gr=10^(GrdB/10);
mprintf(' Gt=%.2f  \n',Gt);
mprintf(' Gr=%.2f  \n',Gr);
Pr=lembda^2*Gt*Gr*Pt/((4*%pi)^2*d^2);
mprintf(' Pr=%.1f pW \n',Pr*10^12);
