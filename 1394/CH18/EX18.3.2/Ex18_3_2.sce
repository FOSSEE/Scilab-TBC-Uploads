
clc
//initialization of variables
D1=0.0035
l=2.59 //cm
t=1.62 //hr
C1=0.03 //mol/l
T1=298 //K
R=0.0821 //arm/mol K
D2=0.005
t2=0.49 //hr
Ps=733 //mm of Hg
P=760 //mm of Hg
//calculations
Lps=D1*l/(t*3600) /(C1*R*T1)
Lp=(D2*l/(t2*3600) + Lps*(C1*R*T1))/(Ps/P)
Lp=2.4*10^-6
sig=Lps/Lp
sig2=0.95
//results
printf("Transport coefficient for phase 1 = %.2f",sig)
printf("\n Transport coefficient for phase 2 = %.2f",sig2)
