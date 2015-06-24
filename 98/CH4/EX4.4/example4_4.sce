//Chapter 4
//Example 4_4
//Page 76

clear;clc;

md=50000;
p=95*1e6;
lf=0.4;
fuel_oil=9*1e6;
tax=7.5*1e6;
rate=0.12;

ugpa=md*lf*8760;
printf("Units generated per annum = %.0f kWh \n\n", ugpa);

afc=rate*p;
printf("Annual fixed charges = Rs. %.0f \n\n", afc);

arc=fuel_oil+tax;
tac=afc+arc;
cpu=tac/ugpa;
printf("Cost per unit= Rs. %.2f \n\n", cpu);