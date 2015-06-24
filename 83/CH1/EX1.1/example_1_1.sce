//Chapter 1
//Example 1.1
//page 5
clear;clc;
fl=760e3;
pf=0.8;
lsg=0.05;
csg=60;
depre=0.12;
hpw=48;
lv=32;
hv=30;
pkwhr=0.10;

md=fl/pf;
printf('Maximum Demand= %.1f kVA \n\n',md/1000);

//calculation for tariff (b)

printf('Loss in switchgear=%.2f %% \n\n',lsg*100);
input_demand=md/(1-lsg);
input_demand=input_demand/1000;
cost_sw_ge=input_demand*60;
depreciation=depre*cost_sw_ge;
fixed_charges=hv*input_demand;
running_cost=input_demand*pf*hpw*52*pkwhr;//52 weeks per year
total_b=depreciation + fixed_charges + running_cost;
printf('Input Demand= %.1f kVA \n\n',input_demand);
printf('Cost of switchgear=Rs %d\n\n',cost_sw_ge);
printf('Annual charges on depreciation=Rs %d \n\n',depreciation);
printf('Annual fixed charges due to maximum demand corresponding to triff(b)=Rs %d \n\n',fixed_charges);
printf('Annual running cost due to kWh consumed=Rs %d \n\n',running_cost);
printf('Total charges/annum for tariff(b) = Rs %d\n\n',total_b)

//calculation for tariff (a)
input_demand=md;
input_demand=input_demand/1000;
fixed_charges=lv*input_demand;
running_cost=input_demand*pf*hpw*52*pkwhr;
total_a=fixed_charges + running_cost;
printf('maximum demand corresponding to tariff(a) = %.f kVA \n\n',input_demand);
printf('Annual fixed charges=Rs %d \n\n',fixed_charges);
printf('Annual running charges for kWh consumed = Rs %d \n\n',running_cost);
printf('Total charges/annum for tariff(a) = Rs %d \n\n',total_a);
if(total_a > total_b)
    printf('Therefore, tariff(b) is economical\n\n\n');
else
    printf('Therefore, tariff(a) is economical\n\n\n');
    