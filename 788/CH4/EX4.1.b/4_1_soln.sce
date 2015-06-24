clc;
pathname=get_absolute_file_path('4_1_soln.sce')
filename=pathname+filesep()+'4_1_data.sci'
exec(filename)

// Solution:
// Reynolds Number,
N_R=(7740*v*D)/nu;

// Results:
printf("\n  Results:  ")
printf("\n The Reynolds number of given oil is %.0f.",N_R)
