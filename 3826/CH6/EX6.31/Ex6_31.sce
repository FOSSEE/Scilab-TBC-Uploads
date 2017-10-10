//Example 6_31 page no:366
clc;
//given
power = 75;//in kW
t1 = 1000;//in hours
t2 = 2000;//in hours
full_load_eff_a = 0.89;
full_load_eff_b = 0.90;
half_load_eff_a = 0.88;
half_load_eff_b = 0.89;
tariff = 7.5;//in paise
dep = 0.12;
motor_cost_a = 3120;//in rupees
full_load_output = 75;//in kW
half_load_output = 37.5;//in kW
//motor A
full_load_loss_a = full_load_output * ((1/full_load_eff_a)-1);
full_yearly_loss_a = full_load_loss_a * t1;
half_load_loss_a = half_load_output * ((1/half_load_eff_a)-1);
half_yearly_loss_a = half_load_loss_a * t2;
tot_yr_loss_a = full_yearly_loss_a + half_yearly_loss_a;
yr_cost_loss_a = tot_yr_loss_a * tariff / 100;
//motor B
full_load_loss_b = full_load_output * ((1/full_load_eff_b)-1);
full_yearly_loss_b = full_load_loss_b * t1;
half_load_loss_b = half_load_output * ((1/half_load_eff_b)-1);
half_yearly_loss_b = half_load_loss_b * t2;
tot_yr_loss_b = full_yearly_loss_b + half_yearly_loss_a;
yr_cost_loss_b = tot_yr_loss_b * tariff / 100;
yr_saving = yr_cost_loss_a - yr_cost_loss_b;
cap_value = yr_saving * 100/12;
disp(yr_saving,"the yearly savings in loss is ( in rupees)");
disp(cap_value,"the capitalised value is(in rupees)");
disp((cap_value+motor_cost_a),"if motor cost of B is less than this(in rupees)");
disp("motor B would be cheaper");
//the mathematical calculation in textbook is wrong
