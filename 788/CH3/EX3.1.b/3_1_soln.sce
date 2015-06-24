clc;
pathname=get_absolute_file_path('3_1_soln.sce')
filename=pathname+filesep()+'3_1_data.sci'
exec(filename)

// Solution:
// we know,Work done=Force * Displacement,
W=F*S; //ft.lb
// Now,Power,
P=W/t; //(ft.lb/s)
P=P/550; //HP
   
// Results:
printf("\n  Results:  ")   
printf("\n The work done by the person is %.1f ft.lb",W)
printf("\n The power delivered by the person is %.3f HP",P)
