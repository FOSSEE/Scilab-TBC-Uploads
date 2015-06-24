clc;
pathname=get_absolute_file_path('3_4_soln.sce')
filename=pathname+filesep()+'3_4_data.sci'
exec(filename)

// Solution:
// Pascal law states, (F1*A1 = F2*A2) 
// Similarly, (S1*A1 = S2*A2)
// Output force upward,
F2=(A2/A1)*F1; //lb
// upward movement of piston 2,
S2=(A1/A2)*S1; //in
// Energy Input,
E1=F1*S1; //in.lb
// Energy Output,
E2=F2*S2; //in.lb

// Results:
printf("\n  Results:  ")   
printf("\n The Output force upward is %.1f lb",F2)
printf("\n The upward movement of piston 2 is %.1f in",S2)
printf("\n The Energy Input is %.1f in.lb",E1)
printf("\n The Energy Output is %.1f in.lb",E2)

