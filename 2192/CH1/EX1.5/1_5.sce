//Example 1.5
clc,clear

maximum_demand= 1000
annual_demand_charges= 150 * maximum_demand

load_factor = 0.4
energy_consumption = 1000*load_factor*365*24
annual_energy_charges = 0.04* energy_consumption 

power_factor= 0.8
phi=acos(power_factor)//power factor angle in radians

reactive_power = (maximum_demand/power_factor)*(sin(phi))
reactive_units = reactive_power* 365*24*load_factor
kVAh_cost = reactive_units* 0.02

total_cost = kVAh_cost + annual_energy_charges + annual_demand_charges 
cost_per_unit = 100*total_cost/ energy_consumption

printf("Cost per Unit = %f paise per kWh",cost_per_unit)
