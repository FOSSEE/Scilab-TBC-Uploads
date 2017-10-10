//Example 4// Ch 12
clc;
clear;
close;
// given data
l=10;//length of cable in km
C4=0.5*10^-6 * l;//in F
printf("Capacitance %f F",C4)
f=50;//in Hz
V=10^4;//in V
Ic=2*V*2*%pi*f*C4/sqrt(3);//line charging current in A
chargKVA=sqrt(3)*V*Ic*10^-3;
printf("charging KVA %f KVAr",chargKVA)




