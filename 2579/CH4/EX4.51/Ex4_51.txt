//Ex:4.51
clc;
clear;
close;
f=1.7*10^3;// frequency in MHz
y=300/f;// wavelength in m
D=4.84/100;// diameter in m
a=11.7*%pi/180;// angle in radian
C=%pi*D;// circumference of the helix in m
S=C*tan(a);// in m
L=78.7/100;// length in m
N=L/S;// the number of turns
Dr=(15*N*S*(%pi*D)^2)/y^3;// the directivity of the antenna
Dr1=10*log(Dr/10);// the directivity of the antenna in dB
h_3dB=52/((%pi*D/y)*sqrt(N*S/y));// half power point beam width in degree
Ar=(2*N+1)/(2*N);// the axial ratio
printf("The number of turns = %f", N);
printf("\n The directivity of the antenna = %f", Dr);
printf("\n The directivity of the antenna in dB = %f dB", Dr1);
printf("\n The half power point beam width in degree = %f degree", h_3dB);
printf("\n The axial ratio = %f", Ar);