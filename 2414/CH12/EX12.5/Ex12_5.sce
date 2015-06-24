clc;
close();
clear();
//page no 406
//prob no. 12.5
B=2*10^6;  //Hz
R=50 ; //ohm
G=10^6;  //gain
kT0=4*10^-21;

Nav=kT0*B;
No=G*Nav;
mprintf('output Noise power=%.0f nW',No*10^9);
