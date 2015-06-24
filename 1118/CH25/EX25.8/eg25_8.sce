clear;
//clc();
w_days=300;
t=8;
tar_mdh=75;
tar_kwh=1.15;

tar_mdl=80;
tar_kwhl=1.43;

avg_load=400;
pf=0.8;
max_dem=500;
loss=0.04;
dep=0.15;
cost=900;

max_kva=max_dem/pf;
cap=max_kva/(1-loss);
cost_hv=cost*cap;
ann_int=dep*cost;
ann_max_dem=tar_mdh*12*max_kva;

ene_con=avg_load*w_days*t/(1-loss);

cost_ene_con=ene_con*tar_kwh;
tot_charges=ann_max_dem + cost_ene_con;
printf("The annual bill is:%.0f Rs\n",tot_charges);

//low voltage supply

ann_max_deml=tar_mdl*12*max_kva;
ann_ene_conl=avg_load*w_days*t;
cost_ene_con=ann_ene_conl*tar_kwhl;
tot_costl=ann_max_deml + cost_ene_con;
printf("The annual bill is:%.0f Rs",tot_costl);
