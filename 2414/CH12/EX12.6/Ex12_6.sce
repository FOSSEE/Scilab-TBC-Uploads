clc;
close();
clear();
//page no 406
//prob no. 12.6
//data from ex 12.5
B=2*10^6;  //Hz
R=50 ; //ohm
G=10^6;  //gain
kT0=4*10^-21;

Nav=kT0*B;
No=G*Nav;
//ex12.6
Vrms=(No*50)^0.5;
mprintf('Vrms=%.1f micro-V',Vrms*10^6);
