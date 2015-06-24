clc;
close();
clear();
//page no 288
//prob no. 8.8
//All frequencies in kHz
W=1;
fs=1.25*2*W;
Tf=1/fs;
mprintf('(a) The sampling rate is %.1f kHz\n',fs);
mprintf('The frame time is %.1f ms\n',Tf);
tau=Tf/16;  //ms
Bt=0.5/tau;
mprintf('The pulse width is %i micro second\n',tau*10^3);
mprintf('The composite baseband bandwidth is %i kHz\n',Bt);
Bt=2*Bt;
mprintf('(b) The RF bandwidth is %i kHz\n',Bt);
