//EX9_13 PG-9.32
clc
C=0.01e-12;
Cm=2e-12;
L=2;
R=2e3;
fs=1/(2*%pi*sqrt(L*C));//series resonant frequency for crystal oscillator
printf("\n series resonant frequency for crystal oscillator fs=%.3f MHz \n",fs*1e-6)
Ceq=C*Cm/(C+Cm);
fp=1/(2*%pi*sqrt(L*Ceq));//parallel resonant frequency for crystal oscillator
printf("\n parallel resonant frequency for crystal oscillator=%.3f MHz \n",fp*1e-6)
