// Chapter6
// Page.No-193, Figure.No-6.4(c)
// Example_6_2_a
// Bandwidth of the amplifier
// Given
clear;clc;
R1=100*10^3;R2=100*10^3;R3=100*10^3;Rf=1*10^6;Rin=50;
Ci=0.1*10^-6; // Capacitance b/w 2 stages being coupled
Ro=Rin; // ac output resistance of the 1st stage
Vcc=15;
UGB=10^6; // Unity gain bandwidth
Rif=R2*R3/(R2+R3);  // since Ri*(1+A*B)>>R2 or R3
fl=1/(2*%pi*Ci*(Rif+Ro)); // low-freq cutoff 
printf("\n Low-freq cutoff is = %.1f Hz \n",fl) // Result
K=Rf/(R1+Rf);
Af=-Rf/R1; // closed loop voltage gain
fh=UGB*K/abs(Af); // High-freq cutoff
printf("\n High-freq cutoff is = %.1f Hz \n",fh) // Result
BW=fh-fl; // Bandwidth
printf("\n Bandwidth is = %.1f Hz \n",BW) // Result