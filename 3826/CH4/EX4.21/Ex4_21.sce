//the examples are continuously numbered throughout the textbook
//Example 4_21 page no:261
clc;
//given
surf_area = 0.36;//in m^2
thickness = 0.0254;//in mm
mass_den = 8.96 * 10 ^ 3;//in kgm^-3
ece = 32.9 * 10^-8;//in kgC^-1
mass_cop = surf_area * thickness * 10^-3 * mass_den;
ece_cop = ece * 3600 * 1000;
amp_hr = mass_cop/ece_cop;
disp(amp_hr,"the ampere hours required is (in amp-hours)");
//the ampere hour calculation is wrong in textbook. The division between mass of copper and ece of copper is done wrongly in textbook

