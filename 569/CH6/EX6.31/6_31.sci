// Calculating the value of resistance and smallest output current
clc;
ER=10;
n=6;
Imax=10*10^-3;
R=ER*((2^n)-1)/[(2^(n-2))*Imax];
disp(R,'resistance (ohm)=')
LSB=ER/[(2^(n-1))*R];
disp(LSB,'smallest output current (A)')
