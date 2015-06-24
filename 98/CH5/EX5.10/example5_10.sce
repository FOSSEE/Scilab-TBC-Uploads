//Chapter 5
//Example 5_10
//Page 96

clear;clc;

md=50;
ec=36000;
re=23400;
fc=80;
rc=0.08;
plus=0.5;
pfl=86;

al=ec/24/30;
arp=re/24/30;
phi=atan(arp/al);
pf=cos(phi);
pfsc=ec*plus*(pfl-pf*100)/100;
mb=fc*md+rc*ec+pfsc;

printf("Average laod = %.0f kW \n\n", al);
printf("Average reactive power = %.1f kVAR \n\n", arp);
printf("Power factor angle = %.2f radians \n\n", phi);
printf("Power factor = %.4f \n\n", pf);
printf("Power factor surcharge = Rs. %.1f \n\n", pfsc);
printf("Monthly bill = Rs. %.2f \n\n", mb);


