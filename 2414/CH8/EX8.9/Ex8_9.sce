clc;
close();
clear();
//page no 290
//prob no. 8.9
//All frequencies in kHz
W=10;
fs=2*W;
Tf=1/fs;
mprintf('(a) The minimum sampling rate is %i kHz\n',fs);
mprintf('The frame time is %i micro second\n',Tf*10^3);
tr=0.01*Tf  //ms
Bt=0.5/tr;
mprintf('The maximum rise time is %.1f micro second\n',tr*10^3);
mprintf('The approximate transmission bandwidth is %i kHz\n',Bt);
