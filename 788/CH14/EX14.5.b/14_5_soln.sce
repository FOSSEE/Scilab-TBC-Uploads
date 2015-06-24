clc;
pathname=get_absolute_file_path('14_5_soln.sce')
filename=pathname+filesep()+'14_5_data.sci'
exec(filename)

// Solution:
// suction pressure in absolute,
p_suc_abs=p_suc+p_atm; //psia
// maximum weight that suction cup can lift,
F=ceil((p_atm*(%pi/4)*Do^2)-(p_suc_abs*(%pi/4)*Di^2)); //lb
// maximum weight suction cup can lift with perfect vaccum,
W=p_atm*(%pi/4)*Do^2; //lb

// Results:
printf("\n  Results:  ")   
printf("\n The maximum weight that suction cup can lift is %.0f lb.",F)
printf("\n The maximum weight that suction cup can lift with perfect vacuum is %.0f lb.",W)
