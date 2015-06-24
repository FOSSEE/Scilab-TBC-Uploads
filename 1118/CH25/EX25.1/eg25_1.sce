clear;
//clc();
max_dem=80;
pf=0.45;
tar_md=750;
tar_en=1.1;
ann_ener_cons=max_dem*pf*8760;
ce=1.1*ann_ener_cons;

cf=tar_md*max_dem;
tot=ce+cf;
cost_per_kwh=tot/ann_ener_cons;
printf("the overall cost is:%.2f Rs",cost_per_kwh);
