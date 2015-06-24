// // To determine the inductance per Km per phase of single circuit
clear
clc;
Ds=sqrt(0.025*.4*.7788);
Dm=((6.5*13.0*6.5)^(1/3));
Z=2*(10^-4)*1000*log(Dm/Ds);
mprintf("inductance =%.3f mH/km/phase",Z);
