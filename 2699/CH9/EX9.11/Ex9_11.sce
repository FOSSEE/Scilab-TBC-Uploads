//EX9_11 PG-9.25
clc
L1=20e-6;
L2=2e-3
Leq=L1+L2;//total inductance  for Hartley oscillator
fmax=2.5e6;//maximum frequency
fmin=1e6;//minimum frequency
printf("For f=fmax=2.5MHz")
f=fmax;
C=1/(4*%pi^2*f^2*Leq);//since f=1/(2*%pi*sqrt(Leq*C));
C=C*1e12
printf("\n C=%.3f pF \n",C)
printf("\n For f=fmin=1MHz")
f=fmin;
C1=1/(4*%pi^2*f^2*Leq);//since f=1/(2*%pi*sqrt(Leq*C));
C1=C1*1e12
printf("\n C=%.3f pF \n",C1)
printf("\n Hence C must be varied between %.3f pF and %.2f pF \n",C,C1)



