clc;
pathname=get_absolute_file_path('2_1_soln.sce')
filename=pathname+filesep()+'2_1_data.sci'
exec(filename)

// Solutions:
// we know acceleration due to gravity,
g=32.2; //ft/s^2
W=(m*g);

// Results:
printf("\n  Results:  ")
printf("\n The weight of Body is %.0f lb.",W)
