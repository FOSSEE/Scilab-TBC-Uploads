//Chapter 4
//Example 4_11
//Page 79

clear;clc;

cost=3000;
i=0.05;
dep=0.02;
om=0.02;
i_r=0.015;
l=0.125;
d=1.25;
m_d=0.8
lf=0.4;

//assume ic=100kW
ic=100;

md=m_d*ic;
ad=md*lf;
cc=cost*100;

fc=cc*(i+dep);
agg_md=md*d;
afc=fc/agg_md;

rc=cc*(om+i_r);
ugpa=ad*8760;
u=ugpa*(1-l);
arc=rc/u;

printf("Annual fixed charges\n");
printf("  Annual fixed charges = Rs. %.0f \n", fc);
printf("  Aggregate of maximum demamd = %.0f kW \n", agg_md);
printf("  Annual fixed charges = Rs. %.0f per kW of max demand\n\n", afc);

printf("Annual running charges\n");
printf("  Annual running charges = Rs. %.0f \n", rc);
printf("  Units generated per annum = %.0f kWh \n", ugpa);
printf("  Units reaching customer  = %.0f kWh \n", u);
printf("  Annual running charges = Rs. %.5f \n\n", arc);

printf("Generation cost in two part form is: \n \t\t\t\t\t Rs(%.0f * kW + %.5f * kWh)\n\n", afc, arc);

t=fc+rc;
printf("Total annual charges = Rs. %.0f \n\n", t);
printf("Cost per kWh = Rs. %.4f \n\n", t/u);
