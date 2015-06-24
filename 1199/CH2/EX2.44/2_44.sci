//2.44
clc;
e0=8.85*10^-12;
A=500*10^-6;
d=0.2*10^-3;
C=e0*A/d;
d1=0.18*10^-3;
C_new=e0*A/d1;
C_change=C_new-C;
Ratio=(C_change/C)/(0.02/0.2);
printf("\nratio of per unit change of capacitance to per unit change of diaplacement=%.2f",Ratio)
d1=0.19*10^-3;
e1=1;
d2=0.01*10^-3;
e2=8;
C=(e0*A)/((d1/e1)+(d2/e2));
d1_new=0.17*10^-3;
C_new=(e0*A)/((d1_new/e1)+(d2/e2));
C_change=C_new-C;
Ratio=(C_change/C)/(0.02/0.2);
printf("\n New ratio of per unit change of capacitance to per unit change of diaplacement=%.2f",Ratio)
