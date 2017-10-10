//Solution 1-04
WD=get_absolute_file_path('1_04_solution.sce');
datafile=WD+filesep()+'1_04_example.sci';
clc;
exec(datafile)
W = m * g; //Newton's second law
W = W / lbf; //application of conversion factor
//result
printf("Weight of one pond mass = %1.2f lbf", W);
