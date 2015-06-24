//3.3
clc;
R=4;
L=50*10^-6;
C=6*10^-6;
a=R^2;
b=4*L/C;
wr=(1/(L*C)-(R^2/(4*L^2)))^0.5;
fr=wr/(2*%pi);
Tr=1/fr;
fo=6000;
wo=2*%pi*fo;
toff=%pi*(1/wo-1/wr);
printf("Avialable circuit turn off time = %.8f sec", toff)
fmax=1/(2*(%pi/wr+6*10^-6));
printf("\nMaximum frequency = %.1f Hz", fmax)