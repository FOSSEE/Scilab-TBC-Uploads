clc;
pathname=get_absolute_file_path('5_1_soln.sce')
filename=pathname+filesep()+'5_1_data.sci'
exec(filename)

// Solutions:
// Volumetric Displacementis is given by,
Vd=(%pi/4)*((Do^2)-(Di^2))*L; //in^3
// Theoretical Flow rate,
Qt=(Vd*N)/231; //gpm
// Volumetric efficiency,
eta_v=(Qa/Qt)*100; //%

// Results:
printf("\n  Results:  ")
printf("\n The volumetric efficiency of Gear Pump  is %.1f percent.",eta_v)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
