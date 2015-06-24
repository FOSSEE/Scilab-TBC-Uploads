clc;
pathname=get_absolute_file_path('2_14_soln.sce')
filename=pathname+filesep()+'2_14_data.sci'
exec(filename)

// Solution:
// viscosity of sample oil at 100 degF,
U=L-(((L-H)*VI)/100); //SUS

// Results:
printf("\n  Results:  ")
printf("\n The viscosity of sample oil at 100 degF is %0.0f SUS.",U)
