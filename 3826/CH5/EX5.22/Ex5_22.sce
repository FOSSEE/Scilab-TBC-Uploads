//the examples are continuously numbered throughout the textbook
//Example 5_22 page no:313
clc;
//given
len = 12;//in m
wide = 7.5;//in m
high = 4.5;//in m
avg_lumen = 80;//in lumen per square meter
height = 0.75;//in m
coeff_uti = 0.3;
tot_area = len * wide;
tot_lumen = avg_lumen * tot_area;
lamp_lumen_req = tot_lumen /coeff_uti;
//suppose 100 watt lamps are used
no_of_lamps = lamp_lumen_req / 1340;
disp(no_of_lamps,"the number of lamps required would be ")
disp("this can be arranged in 6 rows of 3");
//suppose 200 watt lamps are used
no_of_lamps = lamp_lumen_req / 2880;
disp(no_of_lamps,"the number of lamps required would be ")
disp("this can be arranged in 3 rows of 3");
//suppose 80 watt lamps are used
no_of_lamps = lamp_lumen_req / 2400;
disp(no_of_lamps,"the number of lamps required would be ")
disp("this can be arranged in 3 rows of 4");
tot_energy = 12 * 80;
disp(tot_energy,"the total energy consumption with the fluorescent lamps is (in W)");

