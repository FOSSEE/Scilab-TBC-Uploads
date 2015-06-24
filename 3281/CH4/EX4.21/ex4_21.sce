//Page Number: 239
//Example 4.21
clc;
//Given
I=30; //dB
Il=0.4; //dB

S12=10^(I/-20);
S21=10^(Il/-20);
s=[0 S12;S21 0];
disp(s,'Scattering matrix:');
