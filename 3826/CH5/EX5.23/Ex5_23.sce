//Example 5_23 page no:330
clc;
//given
height = 15;//in m
area_ill = 15 * 45;//in m^2
waste_light_factor = 1.2;
coeff_uti = 0.4;
deprication_factor = 1.5;
tot_lumen = area_ill * 80;
lumen_output = tot_lumen * waste_light_factor * deprication_factor;
tot_lamp_lumens = lumen_output / coeff_uti;
lumen_output_each = 18.9;
tot_lumen_output = 1000 * lumen_output_each;
no_of_lamps = tot_lamp_lumens / tot_lumen_output;
disp(tot_lumen,"the total lumens required on surface is (in lm)");
disp(lumen_output,"the lumens output from the projector is (in lm)");
disp(tot_lamp_lumens,"the total lamp lumens is (in lumens)");
disp(tot_lumen_output,"the total lumens output is (in per lamp)");
disp(no_of_lamps,"the number of lamps is ");
disp("the no of lamps is rounded off to 15 or 16");
