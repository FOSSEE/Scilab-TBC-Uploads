// Example 10.11, page no-275
clear
clc
e=1.6*10^-19//C
eg=1.12
me=0.12
mh=0.28
T=300
k=1.38*10^-23

ef=(eg/2)+(3*k*T/4)*log(mh/me)
printf("The Fermi energy of Si at 300 K is %.3f eV",ef)
