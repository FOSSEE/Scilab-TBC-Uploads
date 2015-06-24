clc;
clear all;
//chapter 4
//page no 123
//example 4.6
L=4*10^-6;   //Henry
C=9*10^-12;  //Farad
R=20*10^3;    //ohm

f0=1/(2*%pi*sqrt(L*C));    //frequency in Hz
mprintf('(a) The resonant frequency is f0=%.2f  MHz\n',f0*10^-6)
Q=R*sqrt(C/L)
mprintf(' (b) The Q is %i\n',Q);
B=f0/Q;
mprintf(' (c) The 3-dB bandwidth is B=%i KHz\n',B*10^-3);
