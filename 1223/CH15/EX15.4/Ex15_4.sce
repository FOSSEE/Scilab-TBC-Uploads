clear;
clc;
//Example 15.4
C=0.1*10^-6;
R=1000;
fo=1/(2*%pi*R*C*sqrt(3));
printf('\nthe oscillation frequency =%.2fHz\n',fo)
//minimum amplifier gain=8
R=1;//KOhm
R2=8*R;
printf('\nR2=%.f KOhm\n',R2)
