//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex14_1.sce.

clc;
clear;
maximum_demand=1.5e3;
total_lamps=10;
lamps_on=7;
lamp_ontime=5;
lamp_power=100;
heater_on=2;
heater_ontime=3;
heater_power=1e3;
printf("\n (a)")
actual_energy_consumed=(lamps_on*lamp_power*lamp_ontime)+(heater_on*heater_power*heater_ontime);
time_duration=24;
average_load=(actual_energy_consumed)/(time_duration);
printf("\n  Average load=%3.2f W \n",average_load)

printf("\n (b)")
monthly_energy_consump=actual_energy_consumed*30*1e-3;
printf("\n  Monthly energy consumption=%3.0f kW \n",monthly_energy_consump)

printf("\n (c)")
load_factor=average_load/maximum_demand;
printf("\n  Load factor=%1.3f \n",load_factor)
