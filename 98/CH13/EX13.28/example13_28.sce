//Chapter 13
//Example 13_28
//Page 343

clear;clc;

v1=250;
v2=250;
l1=35;
l2=20;

r1=v1^2/l1/1000;
r2=v2^2/l2/1000;

I=(v1+v2)/(r1+r2);
V1=I*r1;
V2=I*r2;

printf("Resistance of load on the +ve side = %.3f ohm \n\n", r1);
printf("Resistance of load on the -ve side = %.3f ohm \n\n", r2);
printf("Circuit current = %.2f A \n\n", I);
printf("Voltage across +ve outer and middle wire = %.1f V \n\n", V1);
printf("Voltage across -ve outer and middle wire = %.1f V \n\n", V2);

