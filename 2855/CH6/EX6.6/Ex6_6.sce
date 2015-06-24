
//chapter 6
//page no155
//Ex6_6
//given
clear;
clc;
Impd1=250;     //in microA
Impd0=25;     //in microA
Iref=(1/16)*Impd1*10^-6;
printf("\n Reference current is %0.3f microA",Iref*10^6)
Rref=1.5/Iref;
printf("\n External bias resistor value Rref1is %0.0f kohm",Rref/1000)
//or
Rref1=24/Impd1/10^-6;
printf("\n Also,Rref1=24/Impd \n External bias resistor value is %0.0f kohm",Rref1/1000)
Irefz=(1/4)*Impd0;
printf("\n Ref0 current is %0.2f microA",Irefz)
Rrefz=1.5/Irefz/10^-6;
printf("\n External bias resistor value Rrefz is %0.0f kohm",Rrefz/1000)
