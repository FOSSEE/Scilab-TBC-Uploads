//the examples are continuously numbered throughout the textbook
//Example 3_17 page no:219
clc;
//given
spc_heat = 393.6;//in Jkg^-1C^-1
lat_heat = 163 * 10^3;// in J/kg
melting_pt = 920;//in C
eff = 70;//in percentage
mass = 500;//in kg
cold_temp = 20;//in C
heat_req_rise_temp = mass * spc_heat *(melting_pt - cold_temp);
heat_req_melt_charge = mass * lat_heat;
tot_joules_req = heat_req_rise_temp+heat_req_melt_charge;
tot_energy = tot_joules_req * 2.78 * 10 ^ -7;//converting to kwh
energy_input = tot_energy *100/eff;
power_input = energy_input/0.75;
disp(power_input,"the average power input to the furnace is (in kW)");

