clc;
pathname=get_absolute_file_path('4_5_soln.sce')
filename=pathname+filesep()+'4_5_data.sci'
exec(filename)

// Solution:
// Reynolds Number in 1st case,
N_R1=(7740*v1*D)/nu;
// Using Moody diagram from fig 4-9,
f1=0.042 ;
// Reynolds Number in 2nd case,
N_R2=(7740*v2*D)/nu;
// relative roughness,
rr=0.0018/D;
// Using Moody diagram from fig 4-9,
f2=0.036;

// Results:
printf("\n  Results:  ")
printf("\n The friction factor in 1st case is %.3f.",f1)
printf("\n The friction factor in 2nd case is %.3f.",f2)
