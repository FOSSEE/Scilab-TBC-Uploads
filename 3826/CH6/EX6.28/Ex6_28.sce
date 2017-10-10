//Example 6_28 page no:358
clc;
//given
con_req = 1000000;//in units per year
load_fac = 30;//in percentage
max_tariff = 120;//in rupees
tariff = 5;//in paise
imp_ld_fac = 100;//in percentage
//sol
avg_ld = con_req / 8760;
max_load = avg_ld * imp_ld_fac / load_fac;
mac_dmd_chc = max_load * max_tariff;
unit_charge = con_req * tariff / imp_ld_fac;
tot_charge = mac_dmd_chc + unit_charge;
avg_price_per_unit = tot_charge * imp_ld_fac / con_req;
max_load = avg_ld;
max_dmd_chc = max_load * max_tariff;
tot_charge = unit_charge + max_dmd_chc;
avg_price_perUnit = tot_charge * imp_ld_fac / con_req;
disp(avg_price_per_unit,"the average price per unit before improving the load factor is (in paise)");
disp(avg_price_perUnit,"the average price per unit after improving the load factor is (in paise)");
disp(avg_price_per_unit - avg_price_perUnit,"the total savings is (in paise)");
