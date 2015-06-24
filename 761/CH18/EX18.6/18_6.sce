clc;
// page no 681
// prob no 18.6
// refer example no 18.4 and 18.5
// The antenna and feedline combination from ex 18.4 is used with the Rx from ex 18.5
Ta=182;// noise temp of the antenna and feedline combination expressed in K
Teq=169;// noise temperature of the Rx
B=20*10^6;// BW of the receiver
Tn_sys=Ta+Teq;//Noise temp for the system
k=1.38*10^-23;//Boltzmann constant
// Noise power of the system is given as
Pn=k*Tn_sys*B;// where k is Boltzmann constant
disp('W',Pn,'The noise power is');
Pn_dBm=10*log10(Pn/10^-3);
disp('dBm',Pn_dBm,'The thermal noise power is');