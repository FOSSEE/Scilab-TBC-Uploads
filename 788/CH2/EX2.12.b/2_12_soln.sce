clc;
pathname=get_absolute_file_path('2_12_soln.sce')
filename=pathname+filesep()+'2_12_data.sci'
exec(filename)

// Solution:
// kinematic viscosity of oil in centistokes,
nu_cs=((0.220*nu)-(135/t)); //centistokes
// absolute viscosity of oil in centipoise,
mu_cp=(gamma1*nu_cs); //centipoise

// Results:
printf("\n  Results:  ")
printf("\n The viscosity of oil in centistokes is %0.0f cS.",nu_cs)
printf("\n The viscosity of oil in centipoise is %0.0f cP.",mu_cp)
