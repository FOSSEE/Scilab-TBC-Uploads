// Chapter6
// Page.No-193, Figure.No-6.3(a)
// Example_6_1
// Bandwidth of the amplifier
// Given
clear;clc;
R1=100;Rf=1*10^3;Rin=50;Rl=10*10^3;
Ci=0.1*10^-6; // Capacitance b/w 2 stages being coupled 
RiF=R1; // ac input resistance of the second stage
Ro=Rin; // ac output resistance of the 1st stage
UGB=10^6; // Unity gain bandwidth
fl=1/(2*%pi*Ci*(RiF+Ro)); // Low-freq cutoff 
printf("\n Low-freq cutoff is = %.1f Hz \n",fl) // Result
K=Rf/(R1+Rf);
Af=-Rf/R1; // closed loop voltage gain
fh=UGB*K/abs(Af); // High-freq cutoff
printf("\n High-freq cutoff is = %.1f Hz \n",fh) // Result
BW=fh-fl; // Bandwidth
printf("\n Bandwidth is = %.1f Hz \n",BW) // Result