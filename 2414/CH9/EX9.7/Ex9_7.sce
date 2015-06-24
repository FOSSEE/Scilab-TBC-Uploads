clc;
close();
clear();
//page no 319
//prob no. 9.7
//all time in ms
//all frequencies in kHz
W=5;
N=8;  //bits
k=19+1;  //word
fs=2*W;
mprintf('fs=%i kHz\n',fs);
Tf=1/fs;
mprintf(' Tf=%.1f ms\n',Tf);
Tw=Tf/k;
mprintf(' Tw=%i micro second\n',Tw*10^3);
tau=Tw/N;
mprintf(' tau=%.3f micro second\n',tau*10^3);
Bt=0.5/tau;
mprintf(' Bt=%ikHz',Bt);
