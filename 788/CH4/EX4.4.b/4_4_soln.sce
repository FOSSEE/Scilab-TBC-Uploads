clc;
pathname=get_absolute_file_path('4_4_soln.sce')
filename=pathname+filesep()+'4_4_data.sci'
exec(filename)

// Solution:
// acceleration due to gravity,
g=9.80; //m/s^2
// Reynolds Number,
N_R=(v*(D/1000))/nu;
// Head loss in pipe,
H_L=floor((64*L*(v^2))/(N_R*(D/1000)*2*g)); //m ,Hagen-Poiseuille Equation
// Head loss in terms of kPa,
H_L1=(gamma1*H_L)/1000; //kPa

// Results:
printf("\n  Results:  ")
printf("\n The Head Loss due to friction in pipe is %.0f m of oil.",H_L)
