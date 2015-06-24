clear;
//clc();
max_dem=100;
tar_md=800;
tar_kwh=1.3;
tar_kwh1=1.83;
t=3600;
lf=0.8;
avg_dem=max_dem*lf;
ann_ene=avg_dem*t;
ann_bill=(tar_md*max_dem + tar_kwh*ann_ene);

ann_bill1=tar_kwh1*ann_ene;

if (ann_bill>ann_bill1) then
    disp("flat rate tarrif is better");
else
    disp("two part tariff is better");
    
end
