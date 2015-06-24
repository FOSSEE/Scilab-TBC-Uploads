clc;
// page no 141
// prob no 4_15_1
//mixer with noise fig. 20dB preceded by amplifier with noise fig. 9dB is given
f1=9;//Noise fig for amplifier
f2=20;//Noise fig for mixer
g=15;//power gain
//Converting dB in power ratio
F1=10^(f1/10);
F2=10^(f2/10);
G=10^(g/10);
//Determination of overall noise fig. reffered at i/p
F=F1+(F2-1)/G;
//converting in dB
FdB=10*log10(F);
disp('dB',FdB,'The overall noise fig is');