clear;
clc;
//Example 7.9
r=2600;
C1=2*10^-6;
C2=0.1*10^-6;
fB=1/(2*%pi*r*(C1+C2));
printf('\n3dB frequency=%.2f MHz\n',fB)
