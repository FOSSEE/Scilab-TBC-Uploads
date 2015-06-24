clc;
pathname=get_absolute_file_path('5_4_soln.sce')
filename=pathname+filesep()+'5_4_data.sci'
exec(filename)

// Solutions:
// volumetric displacement of pump,
Vd=(%pi*((Dc/1000)+(Dr/1000))*(e/1000)*(L/1000))/2; //m^3
// since,1m^3 = 1000L
Vd=1000*Vd; //L

// Results:
printf("\n  Results:  ")
printf("\n The volumetric displacement of vane pump  is %.4f L.",Vd)


