clear;
clc;

ene_con=600;
lf=.45;
t=24;
max_dem=ene_con/(t*lf);
printf("The maximum demand is:%.2f kW\n",max_dem);

lf=.65;
ene_con=lf*max_dem*t;
printf("The energy consumed in 24h is:%.2f kWh",ene_con);
