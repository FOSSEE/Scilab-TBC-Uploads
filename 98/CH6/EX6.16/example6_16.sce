//Chapter 6
//Example 6_16
//Page 120

clear;clc;

p=200;
pf=0.8;
fc=100;
rc=0.05;
pae=500;
id=0.1;
h=5000;

x=fc;
y=pae*id;
ec_pf=sqrt(1-(y/x)^2);
cap=p*(tan(acos(pf))-tan(acos(ec_pf)));
uc=h*p;
ec=uc*rc;
cpae=y*cap;
dc=x*p/ec_pf;
ab=ec+cpae+dc;

printf("Max demand charges = %.0f kW \n", x);
printf("Expenditure on phase advnacing equipement = Rs. %.2f /kVAR/annnum \n\n", y);
printf("(i) Most economical power factor at which factory should operate = %.3f lag \n\n", ec_pf);
printf("(ii)Capacity of phase advancing equipment = %.2f kVAR \n\n", cap);
printf("(iii) Units consumed per year = %.0f kWh \n", uc);
printf("Annual energy charges = Rs. %.0f \n", ec);
printf("Annual cost of phase advancing equipment = Rs. %.0f \n", cpae);
printf("Max demand charges = Rs. %.0f \n", dc);
printf("Annual bill for energy = Rs. %.0f \n", ab);

