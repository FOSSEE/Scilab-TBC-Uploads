//EX9_4 PG-9.14
clc
R=5e3;//each resistance of the RC phase shift oscillator
C=0.1e-6;//each capacitance of the RC phase shift oscillator
f=1/(2*%pi*sqrt(6)*R*C);
printf("\n Therefore frequency of oscillation is %.3f Hz \n",f)
