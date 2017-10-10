//the examples are continuously numbered throughout the textbook
//Example 6_25 page no:345
clc;
//given
beg_cost = 240000;//in rupees
salvage_val = 24000;//in rupees
t = 20;//in years
t1 = 10;//in years
tot_dep = beg_cost - salvage_val;
tot_dep_af10 = beg_cost - 108000;
val = beg_cost * (0.891)^10;
tot_sink_fund = 216000;//in rupees
annual_deposit = (0.08 * tot_sink_fund)/((1.08)^20 -1);
annual_deposit_af10 = (annual_deposit *( 1.08^10-1))/0.08;
val_plant = beg_cost - annual_deposit_af10;
disp(tot_dep_af10,"the value calculated in straight line depreciation at the end of 10 years will be ( in rupees)");
disp(val,"the value calculated in reducing balance depreciation at the end of 10 years will be ( in rupees)");
disp(val_plant,"the value calculated in sinking fund depreciation at the end of 10 years will be ( in rupees)");
//the result vary slightly hence values are rounded off in textbook

