clc;
pathname=get_absolute_file_path('2_7_soln.sce')
filename=pathname+filesep()+'2_7_data.sci'
exec(filename)

// Solution:
// Atmospheric Pressure,
Po=14.7; //psi           
// Absolute Pressure(Pa) =Gage Pressure + Atmospheric Pressure
Pa=Pg+Po;

// Results:
printf("\n  Results:  ")
printf("\n The Absolute Pressure is %0.1f psi.",Pa)
