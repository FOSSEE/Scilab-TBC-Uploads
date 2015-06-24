
//Exa:6.1
clc;
clear;
close;
//Given:
f1=1000;//in KHz
f2=25;//in MHz
IF=455//in KHz 
Q=100;
fs1=f1+2*IF;
p1=fs1/f1 - f1/fs1;
a1=sqrt(1+ Q^2*p1^2);
printf("\n\n\t (a)image frequency is %f KHz \n rejection ratio is %f dB",fs1,20*log10(a1));
fs2=f2+2*IF/1000;
p2=fs2/f2 - f2/fs2;
a2=sqrt(1+ Q^2*p2^2);
printf("\n\n\t (b)image frequency is %f KHz \n rejection ratio is %f dB",fs2,20*log(a2));