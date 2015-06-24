//Chapter 1
//Example 1.3
//page 7
clear;clc;
md=25;
lf=0.6;
pcf=0.5;
puf=0.72;

avg_demand=lf*md;
installed_capacity=avg_demand/pcf;
reserve=installed_capacity-md;
daily_ener=avg_demand*24;
ener_inst_capa=installed_capacity*24;
max_energy=daily_ener/puf;

printf('Average Demand= %.2f MW \n\n',avg_demand);
printf('Installed capacity= %.2f MW \n\n\',installed_capacity);
printf('Reserve capacity of the plant= %.2f MW \n\n',reserve);
printf('Daily energy produced= %d MWh \n\n',daily_ener);
printf('Energy corresponding to installed capacity per day= %d MWh \n\n',ener_inst_capa);
printf('Maximum energy that could be produced = %d MWh/day \n\n',max_energy);

