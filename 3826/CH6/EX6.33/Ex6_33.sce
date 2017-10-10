//Example 6_33 page no:368
clc;
//given
lumen = 1000000;//in lumen-hours
power = 100;//in W
voltage = 230;//in V
voltage2 = 210;//in V
cost = 3;//in rupees
life = 1000;//in hours
enf_cost = 5;//in paise
lumen_output = 1160;
//sol
//210V lamps
no_of_hrs = lumen / lumen_output;
cost_of_lamp = no_of_hrs * cost / life;
cost_of_eng = no_of_hrs * power * enf_cost / ( power *life);
tot_cost = cost_of_eng + cost_of_lamp;
//230V lamps operating at 210V
lumen_output = 810;
life = 2750;
power = 87.5;
no_of_hrs = lumen / lumen_output;
cost_of_lamp = no_of_hrs * cost / life;
cost_of_eng = no_of_hrs * power * enf_cost / ( 100 *1000);
total_cost = cost_of_eng + cost_of_lamp;
disp(tot_cost,"the total cost of 210V lamps is (in rupees)");
disp(total_cost,"the total cost of 230V lamps is (in rupees)");
disp("230V lamps are 2% cheaper than 210V lamps");
