//Example 3_19 page no:240
clc;
//given
vol = 3000;
t1 = 4.5;//in C
t2 = 18.5;//in C
h1 = 75;//in percentage
h2 = 60;//in percentage
eng_for_1cm = 1.22 * 10^3;
eng = eng_for_1cm *vol * 14;
eng = eng/(3.6*10 ^ 6);//converting to kW
moist = 0.00440;//in kgm^-3
latent_heat = 2450 * 10 ^ 3;
weight_of_moist = moist * vol;
heat_req = latent_heat * weight_of_moist;
heat_req = heat_req/(3.6*10^6);
tot_heat_req = eng + heat_req;
disp(tot_heat_req,"the total heat requirement is (in kW)");
