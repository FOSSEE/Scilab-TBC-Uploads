//Ex:2.12
clc;
clear;
close;
P1=3000;// in Watts
P2=500;// in Watts
Gdb=10*log(P1/P2)/log(10);// front to back ratio of an antenna in dB
printf("The front to back ratio of an antenna = %f dB", Gdb);