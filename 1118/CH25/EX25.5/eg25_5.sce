clear;
//clc();
ann_con=200000;
lf=0.4;
tar_md=750;
tar_kwh=1.15;
lf1=0.6;

avg_l=ann_con/8760;
max_dem=avg_l/lf;

max_dem1=avg_l/lf1;
red=max_dem - max_dem1;
sav=tar_md*red;
printf("The saving in energy cost is:%.2f Rs",sav);
