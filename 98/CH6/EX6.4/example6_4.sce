//Chapter 6
//Example 6_4
//Page 111

clear;clc;

p=5;
pf1=0.75;
pf2=0.9;

phi1=acos(pf1);
phi2=acos(pf2);

lead_kvar=p*(tan(phi1)-tan(phi2));
c=lead_kvar/3;

printf("Leading kVAR taken by condensor bank = %.2f kVAR \n\n", lead_kvar);
printf("Rating of capacitors connected in phase = %.3f kVAR \n\n",c);
