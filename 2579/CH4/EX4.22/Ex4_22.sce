//Ex:4.22
clc;
clear;
close;
a=15*%pi/180;// angle in radian
N=35;// number of turns
s_c=tan(a);// the ratio of s to c and c=y
D=(15*N*s_c);// directivity of 35 turn helix
d=10*log(D)/log(10);// directivities of 35 turn helix in dB
printf("The directivity of 35 turn helix = %f dB", d);