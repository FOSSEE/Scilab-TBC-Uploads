clear;
//clc();
l1=100;
t1=9;
l2=125;
t2=6;
l3=50;
t3=7;
l4=5;
t4=2;
tar_md=800;
tar_kwh=1.3;

ene_per_day=l1*t1 + l2*t2+ l3*t3+ l4*t4;
ann_ene=ene_per_day*365;
printf("The annual energy consumption is:%.0f kWh\n",ann_ene);
ann_cost=ann_ene*tar_kwh;
max_dem=l2;
ann_md=max_dem*tar_md;
tot=ann_cost + ann_md;

printf("the energy consumption per year and the yearly bill is:%.0f Rs",tot);
