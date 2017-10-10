// Exa 9.5
// To calculate-
// a) 3-dB bandwidth for a Gaussian low-pass ﬁlter,
// b) 99.99% power bandwidth in the RF channel, and
// c) bit error probability for GMSK.

clc;
clear all;

R=270; //data rate in kbps
Eb_No=6; // in dB
GMSK=0.3; //Gaussian minimum shift keying

//solution
Tb=1/R *10^3; //in microsec
B=GMSK/Tb;
printf('3-dB BW for a gaussian low pass filter is %.3f kHz\n',B*1000);
disp("The 3-dB bandwidth is 81.08 kHz. to determine the 99.99% power bandwidth, we use Table 9.3 to ﬁnd that 1.41*Rb is the required value and degradation factor(beta)= 0.89");
PowerBW=1.41*R;
DegradFac=0.89;
Pe=erfc(sqrt(2*DegradFac*10^(0.1*Eb_No)));
printf(' Power bandwidth in the RF channel is %.1f kHz\n ',PowerBW);
printf('Bit error probability for GMSK is %f * 10^-5\n',Pe*10^5);
