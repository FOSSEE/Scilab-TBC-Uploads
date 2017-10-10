//Example 2_14 page no:188
clc;
//given
mass = 136000;//in kg
g = 9.81;
up_gradient = 1/600;
len = 1005;//in m
V = 1500;
comp_train_wg = mass * g * up_gradient;
net_tractive_effort = 104500 - 6675;
f = net_tractive_effort / (1.1* mass);
quantity = 1/f;
retarding_coasting = 4448/(1.1 * mass);
area_current_curve = 21300*V/3600;
energy_consumption = area_current_curve/(mass*len);
disp(energy_consumption,"the energy consumption of motor-coach train is (in Wh/kg-m)");
