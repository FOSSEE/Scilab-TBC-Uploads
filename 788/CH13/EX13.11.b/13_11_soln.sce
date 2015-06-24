clc;
pathname=get_absolute_file_path('13_11_soln.sce')
filename=pathname+filesep()+'13_11_data.sci'
exec(filename)

// Solution:
// upstream temperature in Rankine,
T1=T1+460; //deg R
// absolute downstream pressure,
p2=p2+14.7; //psia
// flow capacity constant,
Cv=(Q/22.7)*sqrt(T1/(p2*del_p));

// Results:
printf("\n  Results:  ")   
printf("\n The flow capacity constant is %.2f.",Cv)
