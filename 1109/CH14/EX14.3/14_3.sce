clear;
clc;
fc=10*(10^3);Rk=600;
L=Rk/(4*%pi*fc);
printf("-Value of L = %f mH\n",fix(L*(10^3)*10^3)/10^3);
C=1/(4*%pi*fc*Rk);
printf("-Value of C = %f microfarads",fix(C*(10^6)*10^5)/10^5);
