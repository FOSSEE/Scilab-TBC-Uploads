clc;
close();
clear();
//page no 277
//prob no. 8.2
W=5000;    //Hz
fs=1.25*2*W;
mprintf('(a)  The sampling rate is %i Hz.\n',fs);
T=1/fs;    //second
mprintf('(b)  Maximum interval between samples is %f seconds',T);
