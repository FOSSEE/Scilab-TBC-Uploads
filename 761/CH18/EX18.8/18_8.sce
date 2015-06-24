clc;
// page no 683
// prob no 18.8
// refer ex 18.7
fb=40*10^6;// bit rate in bps
Pr_dBm=-62;//power at the receiver in dBm
Pr=10^(Pr_dBm/10)*10^-3;// power at the receiver in W
Eb=Pr/fb;// the energy per bit in J
k=1.38*10^-23;//Boltzmann constant
T=350;
// the noise power density is 
No=k*T;
// Energy per bit to noise density ratio in dB is
Eb_No=10*log10(Eb/No);
disp('dB',Eb_No,'Energy per bit to noise density ratio is ');