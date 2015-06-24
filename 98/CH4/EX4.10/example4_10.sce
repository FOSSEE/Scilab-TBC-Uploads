//Chapter 4
//Example 4_10
//Page 78

clear;clc;

md=60;
lf=0.5;
b_and_e=5*1e6;
fotw=900000;
int_dep=0.1;
org=500000;

ugpa=md*lf*8760*1000;
a=org;
asfc=int_dep*b_and_e;
b=asfc/md/1000;
c=fotw/ugpa;

printf("Units generated per annum = %.0f kWh \n\n", ugpa);

printf("Annual fixed cost = Rs. %.0f \n\n", a);

printf("Annual semi fixed cost = Rs. %.2f \n\n", b);

printf("Annual running cost = Rs. %.5f \n\n", c);
