////Ex 13.3
clc;
clear;
close;
format('v',6);
VBE=0.65;//V
RCL=1.2;//ohm
ILmax=VBE/RCL;//A
//For Vout=0, IL=ILmax
IL=ILmax;//A
disp(IL,"Load current(A)");
