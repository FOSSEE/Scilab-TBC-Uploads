//EX9_10 PG-9.24
clc
L1=2e-3;
L2=20e-6;
Leq=L1+L2;//total inductance  for Hartley oscillator
fmax=2050e3;//maximum frequency
fmin=950e3;//minimum frequency
printf("For f=fmax=2050kHz")
f=fmax;
C=1/(4*%pi^2*f^2*Leq);//since f=1/(2*%pi*sqrt(Leq*C));
C=C*1e12
printf("\n C=%.2f pF \n",C)
printf("\n For f=fmin=950kHz")
f=fmin;
C1=1/(4*%pi^2*f^2*Leq);//since f=1/(2*%pi*sqrt(Leq*C));
C1=C1*1e12
printf("\n C=%.2f pF \n",C1)
printf("\n Hence C must be varied between %.2f pF and %.2f pF \n",C,C1)



