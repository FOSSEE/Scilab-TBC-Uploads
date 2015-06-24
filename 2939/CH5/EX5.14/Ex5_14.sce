
// Ex5_14
clc;

// Given:
a=98.7*10^-24; // area in cm ^2
flux=10^16;
d=19.3;// density
l=0.02;// thickness in cm
area=1;// in cm^2
// Solution:
V=area*l;
m=V*d;
A=(6.022*10^23*m)/(197);
k=A*flux*a;
y=exp((-0.693*5)/(2.7*24*60));
activity=k*(1-y);
printf("The activity is = %f dis s^-1 g^-1",activity)
// specific activity in Ci/cm^3

a1=activity/(3.7*10^10);// in Ci/gold foil
a2=a1/V;// in Ci/cm^3 of foil

printf("\n The activity in Ci/cm^3 of foil is = %f",a2)





