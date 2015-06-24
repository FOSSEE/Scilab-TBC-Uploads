clc;
boiler_eff=71;//%
slope=20;//GJ/D daly
space_heat=boiler_eff/100*slope;
base_load_zero=10000;//GJ/month
base_load=boiler_eff/100*base_load_zero;
consume=1000;//GJ
base_load_new=base_load+consume;

new_eff=75;//%
new_base_load=base_load_new*100/new_eff;
new_space_heat=space_heat/new_eff*100;

//part I
disp(new_space_heat)
annual_consum=12*new_base_load+2527*new_space_heat;
disp("annual consumption is:")
disp("GJ/annum",annual_consum);

//part II
max_consum=new_base_load+(379*new_space_heat);
disp("fuel consumption in january is:")
disp("GJ/month",max_consum);

//part III
enrgy_consume=12*base_load_new/boiler_eff*100;
original_space_heat=2527*20;
saving=enrgy_consume+original_space_heat-annual_consum;
disp("enegy saving is:");
disp("GJ/annum",saving);
