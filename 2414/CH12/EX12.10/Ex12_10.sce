clc;
close();
clear();
//page no 412
//prob no. 12.10
Te=50;   //K
T0=290;   //K
F=1+Te/T0;
mprintf('(a) Noise figure, F=%.3f\n',F);
Fdb=10*log10(F);
mprintf(' (b) Decibel value , Fdb=%.3f dB ',Fdb);
