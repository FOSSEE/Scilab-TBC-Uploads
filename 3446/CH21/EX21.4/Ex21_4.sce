//Exa 21.4
// To determine the coverage of AP.

clc;
clear all;

Eb_No=10;  //in dB
Noise=-120; //in dBm
Pt=20; //in mwatt
R=1; //Data rate in Mbps
CHBW=0.5; //BW in MHz
A=37.7;  //path loss at the ﬁrst meter in dB
Y=3.3; //path loss exponent
Lf=19; //function relating power loss with number of ﬂoors n        (in dB)
Ls=10;  // lognormally distributed random variable representing the shadow effect in dB 

//solution
S2Nreqd=Eb_No*R/CHBW;
Rx_sensi=Noise+S2Nreqd;
Lp=10*log10(20)-Rx_sensi;
//Lp=A+10Ylod(d)+Lf+Ls;therefore
d=10^((Lp-A-Lf-Ls)/(10*Y));
printf('The coverage of AP is %.1f metres \n',d);
