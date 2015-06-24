clear;
//clc();

con_load=50;
max_dem=40;
t=8;
days=300;
tar_f=5000;
tar_md=800;
tar_kwh=1.15;

ene_con=con_load*t*days;
ann_bill=tar_f + tar_md*max_dem + tar_kwh*ene_con;
printf("the annual bill is:%.0f Rs",ann_bill); 
