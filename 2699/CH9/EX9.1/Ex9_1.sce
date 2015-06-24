//EX9_1 PG-9.13
clc
R=4.7e3;//each resistance of the RC phase shift oscillator
C=0.47e-6;//each capacitance of the RC phase shift oscillator
f=1/(2*%pi*sqrt(6)*R*C);
printf("\n Therefore frequency of oscillation is %.3f Hz \n",f)
