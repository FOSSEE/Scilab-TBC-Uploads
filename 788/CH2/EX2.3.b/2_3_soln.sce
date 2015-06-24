clc;
pathname=get_absolute_file_path('2_3_soln.sce')
filename=pathname+filesep()+'2_3_data.sci'
exec(filename)

// Solution:
// we know,
// specific gravity of air=(specific weight of air/specific weight of water)
// also we know,specific weight of water at 68 degF,
gamma_water=62.4; //lb/ft^3
SG_air=gamma_air/gamma_water;

// Results:
printf("\n  Results:  ")
printf("\n The specific gravity of air %0.5f.",SG_air)

