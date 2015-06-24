clc;
pathname=get_absolute_file_path('2_16_soln.sce')
filename=pathname+filesep()+'2_16_data.sci'
exec(filename)

// Solution:
// Atmospheric Pressure,
Po=101000; //Pa           
// Absolute Pressure(Pa) =Gage Pressure + Atmospheric Pressure
Pa=Pg+Po; //Pa

// Results:
printf("\n  Results:  ")
printf("\n The Absolute Pressure is %0.0f Pa.",Pa)
