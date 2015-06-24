//Chapter 6
//Example 6_9
//Page 113

clear;clc;

p1=200;
p2=80;
pf1=0.8;
pf2=0.9;

p=p1+p2;
phi1=acos(pf1);
phi2=acos(pf2);

//From the figure given,

lead=p1*tan(phi1)-p*tan(phi2);
kva_rating=sqrt(p2^2+lead^2);
pf=p2/kva_rating;

printf("Combined load = %.0f kW \n\n", p);
printf("(i) Leading kVAR taken by the motor = %.2f kVAR \n\n", lead);
printf("(ii) kVA rating of the motor = %.2f kVA \n\n", kva_rating);
printf("(iii) pf of the motor = %.2f \n\n", pf);