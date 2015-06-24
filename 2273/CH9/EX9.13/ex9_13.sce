//Calculate the kVA taken
clear;
clc;
//soltion
//given
C3=(0.2*10^-6)*20;//farad
Vph=11*10^3/sqrt(3);
f=50;//Hz
Cn=2*C3;
Ic=2*%pi*f*Vph*Cn;
printf("Charging current= %.2f A\n",Ic)
kVA=3*Vph*Ic*10^-3;
printf("kVA taken by the cable= %.2f kVA",kVA);
//IN BOOK IT IS 24.75 kVA DUE TO SOME PRINTING MISTAKE
