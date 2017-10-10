//Example 6_32 page no:367
clc;
//given
power = 75;//in kW
t1 = 4000;//in hours
cost = 3600;//in rupees
motor_eff = 0.91;
pow_fac = 0.89;
trans_cost = 18;//in rupees per kVA
dep = 0.8;
transformer_cost = 6000;//in rupees
trans_eff = 0.91;
trans_pow_fac = 0.89;
max_tariff = 108;
tariff = 4;
output = 75;//in kW
//sol
kVA_input = output/(pow_fac*motor_eff);
cost_of_trans = 100 * trans_cost;
tot_cap_cost = cost + cost_of_trans;
annual_cost = tot_cap_cost * 8/100;
ove_eff = trans_eff * 0.98;
loss = ((1/ove_eff)-1)*power;
yr_cost_loss = (loss * t1 * tariff)/100;
max_demand = power / (motor_eff*0.98*trans_pow_fac);
max_demand_chc = max_demand * max_tariff;
tot_cost = max_demand_chc + yr_cost_loss + annual_cost;
yr_cap_cost = transformer_cost * 12 /100;
loss = ((1/motor_eff)-1)*power;
yr_cost_of_loss = loss * t1 * tariff / 100;
max_dmd_chc = 92.5 * max_tariff;
total_cost = max_dmd_chc + yr_cost_of_loss + yr_cap_cost;
saving = tot_cost - total_cost;
disp(saving,"the total yearly saving is (in rupees)");
//the calculation for loss is wrong in textbook so the result of saving vary with textbook
