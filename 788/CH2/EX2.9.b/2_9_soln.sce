clc;
pathname=get_absolute_file_path('2_9_soln.sce')
filename=pathname+filesep()+'2_9_data.sci'
exec(filename)

// Solution:
// We know,
// 1 N/m^3 = 157 lb/ft^3
gamma2=157*gamma1; //N/m^3

// Results:
printf("\n  Results:  ")
printf("\n The specific weights is %0.0f N/m^3.",gamma2)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")
