clc;
pathname=get_absolute_file_path('4_2_soln.sce')
filename=pathname+filesep()+'4_2_data.sci'
exec(filename)

// Solution:
// Reynolds Number,
N_R=(v*(D/1000))/nu;

// Results:
printf("\n  Results:  ")
printf("\n The Reynolds number of given oil is %.0f.",N_R)
