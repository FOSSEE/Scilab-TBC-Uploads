//Chapter 5
//Exxample 5_1
//PAge 91

clear;clc;

md=200;
lf=0.4;
mdc=100;
ec=0.1;

ugpa=md*lf*8760;
ac=mdc*md+ec*ugpa;
oc=ac/ugpa;

printf("Units generated per annum = %.0f kWh \n\n", ugpa);
printf("Annual charges = %.0f kWh \n\n", ac);
printf("Overall cost per kWh = Rs. %.5f \n\n", oc);
