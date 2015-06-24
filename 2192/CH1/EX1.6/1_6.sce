//Example 1.6
clc,clear

capital_cost = 16e6 //
annual_cost=14e5 //annual cost of fuel and oil
tws = 9e5 //taxes wages and salaries
roi = 12/100 //annual rate of interest and depreciation

idc_capital = capital_cost*roi// interest and depreciation on capital cost
annual_generation_cost = idc_capital + tws + annual_cost

load_factor = 60/100
units = 80*365*24* load_factor

cost_of_kWh = annual_generation_cost  / units
printf('Cost per kWh delivered = %.3f paise',cost_of_kWh)
