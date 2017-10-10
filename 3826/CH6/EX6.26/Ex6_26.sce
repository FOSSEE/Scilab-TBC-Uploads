//Example 6_26 page no:348
clc;
//given
load1 = 200;//in kW
load2 = 150;//in kW
load3 = 50;//in kW
t1 = 1;//in hour
t2 = 7;//in hour
t3 = 8;//in hour
max_tarrif = 108;//in rupees
tarrif = 10;//in paise
max_demand_charge = load1 * max_tarrif;
total = (load1* t1 * 6 * 52) + (load2* t2 * 6 * 52)+ (load3* t3 * 6 * 52);
annual_cost = total * 10;
annual_cost = annual_cost / 100;//converting to rupees
tot_annual_cost = annual_cost + max_demand_charge;
avg_cost = tot_annual_cost * 100 / total;
disp(tot_annual_cost,"the annual energy cost for the industry is (in rupees)");
disp(avg_cost,"the average cost per unit is (in paise)");
