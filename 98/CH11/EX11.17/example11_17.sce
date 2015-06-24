//Chapter 11
//Example 11_17
//Page 289

clear;clc;

c=0.3;
v=11;
f=50;
l=5;

c3=l*c;
vph=v*1000/sqrt(3);
cn=2*c3;
ic=2*%pi*f*cn*vph/1e6;

printf("The capacitance between a pair of cores with third core earthed for a length of %d km is: \n C3 = %.2f uF \n\n", l, c3);
printf("Phase voltage = %.0f V \n\n", vph);
printf("Core to nuetral capacitance = %.2f uF \n\n", cn);
printf("Charging current = %.2f A \n\n", ic);
