// Example 6.8, Page No-282
clear
clc

R2=16*10^3
R3=16*10^3
Rf=15.8*10^3
Ri=27*10^3
C2=0.01*10^-6
C3=0.01*10^-6
fL=1/(2*%pi*sqrt(R2*R3*C2*C3))
fL=fL/1000
printf('\nfL= %.1f kHz', fL)

A=1+Rf/Ri
printf('\nA= %.3f', A)

