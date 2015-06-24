clear;
clc;
fc=20*(10^3);Rk=600;m=0.6;
L0=Rk/(4*%pi*fc);
C0=1/(4*%pi*fc*Rk);
C1=2*C0/m;
printf("-2C/m = %f microfarads\n",round(C1*(10^6)*1000)/1000);
L=L0/m;
printf("-L/m = %f mH\n",round(L*(10^3)*100)/100)
C2=C0*((4*m)/(1-(m*m)));
printf("-4mC/(1-m^2) = %f microfarads",round(C2*(10^6)*1000)/1000);
