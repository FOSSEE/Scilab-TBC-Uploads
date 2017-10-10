// To Compute the number of electrons.

clc;
clear;

I=(25)*(10^-3);
t=(30)*(10^-3);
C=I*t;
// 1C = 6.242*(10^18)
n= 6.242*(10^18);
e_s=C*n;
disp(e_s,'The Number Of Electrons passing through the person is' )
