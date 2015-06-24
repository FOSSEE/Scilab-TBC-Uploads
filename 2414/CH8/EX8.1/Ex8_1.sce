clc;
close();
clear();
//page no 277
//prob no. 8.1
W=5000;    //Hz
fs=2*W;
mprintf('(a)  The minimum sampling rate is %i samples per second.\n',fs);
T=1/fs;    //second
mprintf(' (b)  Maximum interval between samples is %f seconds',T);
