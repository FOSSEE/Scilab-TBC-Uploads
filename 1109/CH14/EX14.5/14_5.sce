clear;
clc;
fc=1000;Rk=600;
L=Rk/(4*%pi*fc);
C=1/(4*%pi*fc*Rk);
printf("Thus,the series elements are two capacitors of value %f microfarad each and shunt inductance of value %f mH.",round(C*(10^3)*10^6)/10^5,fix(L*(10^3)*100)/100);
