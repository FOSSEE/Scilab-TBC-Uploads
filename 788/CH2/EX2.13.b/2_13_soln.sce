clc;
pathname=get_absolute_file_path('2_13_soln.sce')
filename=pathname+filesep()+'2_13_data.sci'
exec(filename)


// Solution:
// kinematic viscosity of oil in centistokes,
nu_cs=(t*cc); //centistokes
// absolute viscosity of oil in centipoise,
SG=Den;
mu_cp=(SG*nu_cs); //centipoise
// rounding off the above answer
mu_cp=fix(mu_cp)+(fix(round((mu_cp-fix(mu_cp))*10))/10); //centipoise

// Results:
printf("\n  Results:  ")
printf("\n The viscosity of oil in centistokes is %0.1f cS.",nu_cs)
printf("\n The viscosity of oil in centipoise is %0.1f cP.",mu_cp)

