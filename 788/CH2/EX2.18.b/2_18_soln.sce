clc;
pathname=get_absolute_file_path('2_18_soln.sce')
filename=pathname+filesep()+'2_18_data.sci'
exec(filename)

// Solution:
// absolute viscosity of oil,
mu=(F/A)/(v/y); //Ns/m^2
// absolute viscosity of oil in cP,
mu_P=(F*100000*y*100)/(v*100*A*10000); //poise
mu_cP=mu_P*100; //centipoise

// Results:
printf("\n  Results:  ")
printf("\n The viscosity of oil is %0.2f Ns/m^2.",mu)
printf("\n The viscosity of oil is %0.2f cP.",mu_cP)
