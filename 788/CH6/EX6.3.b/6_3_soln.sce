clc;
pathname=get_absolute_file_path('6_3_soln.sce')
filename=pathname+filesep()+'6_3_data.sci'
exec(filename)

// Solution:
// Inclination of Weight,
theta=(theta*%pi)/180; //rad
// Cylinder Force,
F=W*sin(theta); //lb

// Results:
printf("\n  Results:  ")   
printf("\n The Cylinder Force at constant velocity is %.0f lb.",F)



