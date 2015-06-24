clear;
//clc();
max_dem=150;
lf=0.65;
tar_md=900;
tar_kwh=1.3;
pf=0.82;

max_kva_dem=max_dem/pf;
ann_con=(max_dem)*lf*8760;
printf("the total energy consumed is:%.0f kWh\n",ann_con);
ann_cost=ann_con*tar_kwh;
ann_dem_cost=tar_md*max_kva_dem;
ann_bill=ann_cost + ann_dem_cost;
printf("The annual electricity bill is:%.0f Rs",ann_bill);
