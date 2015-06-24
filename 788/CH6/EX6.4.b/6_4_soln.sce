clc;
pathname=get_absolute_file_path('6_4_soln.sce')
filename=pathname+filesep()+'6_4_data.sci'
exec(filename)

// Solution:
// For constant velocity,Cylinder Force,
F=W; //lb
// Rate of change of velocity,
a=(v-u)/t; //ft/s^2
// Force required to accelerate the weight,
F_acc=(F/32.2)*a; //lb
// Therefore, Cylinder Force,
F_cyl=(F+F_acc); //lb

// Results:
printf("\n  Results:  ")   
printf("\n The Cylinder Force at constant velocity is %.0f lb.",F)
printf("\n The Cylinder Force required to accelerate the Body is %.0f lb.",F_cyl)
printf("\n The answer in the program is different than that in textbook. It may be due to no.s of significant digit in data and calculation")




