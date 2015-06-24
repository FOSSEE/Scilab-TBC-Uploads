clc;
pathname=get_absolute_file_path('3_13_soln.sce')
filename=pathname+filesep()+'3_13_data.sci'
exec(filename)

// Solution:
// Pascal law states, (F1*A1 = F2*A2) 
// Similarly, (S1*A1 = S2*A2)
// Output force upward,
F2=(A2/A1)*F1; //N
// upward movement of piston 2,
S2=(A1/A2)*S1; //cm

// Results:
printf("\n  Results:  ")   
printf("\n The Output force upward is %.0f N",F2)
printf("\n The upward movement of piston 2 is %.2f cm",S2)
