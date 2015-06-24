clc;
pathname=get_absolute_file_path('6_2_soln.sce')
filename=pathname+filesep()+'6_2_data.sci'
exec(filename)

// Solution:
// Cylinder Force,
F=CF*W; //lb

// Results:
printf("\n  Results:  ")   
printf("\n The Cylinder Force at constant velocity is %.0f lb.",F)



