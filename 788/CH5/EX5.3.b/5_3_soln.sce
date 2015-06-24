clc;
pathname=get_absolute_file_path('5_3_soln.sce')
filename=pathname+filesep()+'5_3_data.sci'
exec(filename)

// Solutions:
// eccentricity for vane pump,
e=2*Vd/(%pi*(Dc+Dr)*L); //in

// Results:
printf("\n  Results:  ")
printf("\n The eccentricity of vane pump  is %.3f in.",e)
