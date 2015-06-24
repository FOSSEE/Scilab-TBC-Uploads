clear;
//clc();
ins_cap=500*10^(6);
cap_cost=35000*10^(3);
dep=0.12;
fuel_con=0.85;
fuel_cost=0.8;
oper_cost=0.25;
p_load=475*10^(6);
lf=0.82;
avg_load=p_load*lf;
ene_gen=avg_load*8760/1000;
tot_inv=ins_cap*cap_cost/1000000;

ann_dep=dep*tot_inv;

fuel_con_yr=fuel_con*avg_load*8760/1000;

ann_fuel_cost=fuel_cost*fuel_con_yr;
other_cost=oper_cost*ann_fuel_cost;
gen_cost=(ann_dep + ann_fuel_cost + other_cost)/ene_gen;
printf("the generation cost per kwh is:%.2f Rs",gen_cost);
