clc;
pathname=get_absolute_file_path('2_8_soln.sce')
filename=pathname+filesep()+'2_8_data.sci'
exec(filename)

// Solution:
// Atmospheric Pressure,
Po=14.7; //psi           
// Absolute Pressure(Pa) =Gage Pressure + Atmospheric Pressure
Pa=Pg+Po; //psi

// Results:
printf("\n  Results:  ")
printf("\n The Absolute Pressure is %0.1f psi.",Pa)
