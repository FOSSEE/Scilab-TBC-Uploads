clc;
pathname=get_absolute_file_path('4_3_soln.sce')
filename=pathname+filesep()+'4_3_data.sci'
exec(filename)

// Solution:
// acceleration due to gravity,
g=32.2; //ft/s^2
// Reynolds Number,
N_R=(7740*v*D)/nu;
// Head loss in pipe,
H_L=round((64*L*(v^2))/(N_R*(D/12)*2*g)); //ft ,Hagen-Poiseuille Equation
// Head loss in terms of psi,
H_L=SG_oil*0.0361*12*H_L; //psi

// Results:
printf("\n  Results:  ")
printf("\n The Head Loss due to friction in pipe is %.0f psi.",H_L)
