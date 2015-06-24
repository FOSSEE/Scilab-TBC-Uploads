//Chapter 4
//Example 4_9
//Page 78

clear;clc;

md=40;
lf=0.6;
cost=7*1e5;
fc_rate = 0.2;

ic=50;
p=1000;
dep=0.1;
r_per_kW=1;
r_per_kWh=0.1;

ugpa=md*lf*1000*8760;
cc=ic*1e6;

printf("Annual fixed charges\n");
d=dep*cc;
sm=fc_rate*cost;
afc=d+sm;
c_per_kW=afc/md/1000+r_per_kW;

printf("\t Depreciation = Rs. %.0f \n", d);
printf("\t Sales, maintainence = Rs. %.0f \n", sm);
printf("\t Total annual fixed charges = Rs. %.0f \n", afc);
printf("\t Cost per kW = Rs. %.2f \n\n", c_per_kW);

printf("Annual running charges\n");
s_m=(1-fc_rate)*cost;
c_per_kWh=s_m/ugpa+r_per_kWh;
printf("\t Salaries, maintainence = Rs. %.0f \n", s_m);
printf("\t Cost per kWh = Rs. %.4f \n\n", c_per_kWh);

printf("Total generation cost in two part form is given by: \n \t\t\t\t\t\t\t Rs. (%.2f *kW + %.4f *kWh) \n\n", c_per_kW, c_per_kWh);
