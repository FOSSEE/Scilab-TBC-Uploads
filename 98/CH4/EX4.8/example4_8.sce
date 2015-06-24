//Chapter 4
//Example 4_8
//PAge 77;

clear;clc;

ic=300;
cf=0.5;
lf=0.6;
cost=9*1e7;
p=1e9;
i_d=0.1;

md=ic*cf/lf;
rc=ic-md;
printf("Reserve capacity = %.0f MW \n\n", rc);

ugpa=md*lf*8760*1000;
afc=i_d*p;
arc=cost;
tac=afc+arc;
cost=tac/ugpa;
printf("Units generated per annum = %.0f kWh \n", ugpa);
printf("Annaul fixed charges = Rs. %.0f \n", afc);
printf("Annual running charges = Rs. %.0f \n", arc);
printf("Total annual charges = Rs. %.0f \n", tac);
printf("Cost per kWh = Rs. %.3f \n", cost);