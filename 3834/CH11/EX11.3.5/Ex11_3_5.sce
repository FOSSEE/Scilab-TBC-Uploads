//Fiber-optics communication technology, by Djafer K. Mynbaev and Lowell L. Scheiner 
//Example 11.3.5
//windows 7
//Scilab version-6.0.0
clc;
clear ;
//given

BER=1E-9;//bit error rate
Kb=1.38E-23;//Boltzman constant in J/K
T=300;//Room temperature in K
P=Kb*T;//constant
Rl=50E+3;//load resistance in ohm
x=(4*P)/Rl;//constant  
BWpd=2.5e9//Bandwidth of MF-432 in Hz
R=1//responsivity in A/W from data sheet
It=sqrt(x*BWpd);
Q=6;
e=1.6E-19;//Electrons value in Coulomb

Pmin=(It+e*Q*BWpd)*(Q/R);//The minimal optical power-photodiode sensitivity Pmin in W
mprintf("The minimal optical power-photodiode sensitivity Pmin= %.2f dBm",10*log10(Pmin/1e-3));//the answer vary due to rounding//division by 1e-3 to convert unit from dB to dBm
