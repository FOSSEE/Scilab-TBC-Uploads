//Example 6_30 page no:364
clc;
//given
power = 37;//in kW
motor_cost_a = 1440;//in rupees
eff_a = 88;//in percentage
motor_cost_b = 1920;//in rupees
eff_b = 89;//in percentage
opp = 3000;//in hours
tariff = 6;//in paise per kWH
dep = 10;//in percentage in per year
output = 37;//in kW
//motor A
cap_charge = motor_cost_a * dep / 100;
loss = ((1/0.88)-1) * output;
yr_cost_loss_a = loss * opp * tariff / 100;
disp(yr_cost_loss_a,"the yearly cost of motor A is (in rupees)");
//motor B
cap_charge = motor_cost_b * dep / 100;
loss = ((1/0.89)-1) * output;
yr_cost_loss_b = loss * opp * tariff / 100;
disp(yr_cost_loss_b,"the yearly cost of motor B is (in rupees)");
disp("the motor B gives the lower yearly cost");
//the value of cost vary with textbook hence values are rounded off in textbook but the result is same 

