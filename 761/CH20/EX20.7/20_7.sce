clc;
// page no 761
// prob no 20.7
// refer prob no 20.5
d=38000;//distance of satellite from the Earth surface
P=50;//transmitter power
G=30;//antenna gain
f=12000;//frequency in MHz
B=10^6;// Bandwidth in MHz
//from problem no 2.5
G_T=21;
L_misc=0;
k_dBW=-228.6;//Boltzmann's constant in dBW
// There are no miscellaneous loss
//The stellite transmitting power in dBW is 
Pt_dBW = 10*log10(P);
// The EIPR in dBW 
EIRP_dBW=Pt_dBW + G;
//FSL in dB
FSL_dB= 32.44 + (20*log10(d)) + (20*log10(f));
// The carrier to noise ratio is
ratio=EIRP_dBW - FSL_dB - L_misc + G_T - k_dBW - 10*log10(B);
disp('dB',ratio,'The carrier to noise ratio at the receiver is');