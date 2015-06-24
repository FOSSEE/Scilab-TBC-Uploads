//Page Number: 240
//Example 4.22
clc;
//Given
I=30; //dB
Il=2; //dB
p=1.3;

//Elelments
T=(p-1)/(p+1);
S11=T;
S22=T;
S33=T;
S12=10^(-Il/20);
S13=10^(-I/20);
S21=S13;
S32=S13;
S23=S12;
S31=S23;
s=[S11 S21 S31;S12 S22 S32;S13 S23 S33];
disp(s,'Scattering matrix:');
