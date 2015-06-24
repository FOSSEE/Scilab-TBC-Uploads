//Chapter 2
//Example 2.2
//Page 17

clear;
clc;

max_demand = 20000;
n_boiler = 0.85;
coal_consumption = 0.9;
load_factor = 40;
n_turbine = 0.90;
cost_per_ton = 300;

//Calculation of thermal efficiency

printf("(i)  Thermal efficiency = %.2f %%\n\n", n_boiler*n_turbine*100);
printf("(ii)  Units generated per annum = %.3f kWh\n", max_demand*load_factor*8760);
printf("\t Coal consumption/annum = %.3f tons\n", coal_consumption*7008*1e4/1000);
printf("\t Annual coal bill = Rs %.4f\n", cost_per_ton*coal_consumption*7008*1e4/1000);
