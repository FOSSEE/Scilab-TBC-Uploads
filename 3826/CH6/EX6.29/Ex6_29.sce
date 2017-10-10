//Example 6_29 page no:362
clc;
//given
max_load = 250;//in kW
annual_load_fac = 40;//in percentage
voltage = 11;//in kV
max_tariff = 120;//in rupees
tariff = 4;//in paise
diesel_cost = 360;//in rupees per kW
oil_cost = 6;//in paise
dep_transformer = 8;//in percentage
dep_deisel_plant = 12;//in percentage
transformer_cost = 18;//in rupees per kVA
//sol
tot_no_units = max_load * annual_load_fac * 8760 / 100;
//public supply
capital_cost = 3 * 150 * transformer_cost;
yearly_cost = capital_cost * dep_transformer / 100;
max_demand_charge = max_tariff * max_load;
unit_cost = tot_no_units * tariff / 100;
tot_yr_cost = yearly_cost + max_demand_charge + unit_cost;
//diesel plant
cost = 3 * 150 * diesel_cost;
yr_cost = cost * dep_deisel_plant / 100;
opp_staff_wage = 4800;
unit_cost = tot_no_units * oil_cost / 100;
tot_year_cost = yr_cost + opp_staff_wage + unit_cost;
disp(tot_yr_cost,"the cost of public supply is ( in rupees)");
disp(tot_year_cost,"the cost of diesel plant is ( in rupees)");
