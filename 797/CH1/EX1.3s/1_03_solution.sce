//Solution 1-03
WD=get_absolute_file_path('1_03_solution.sce');
datafile=WD+filesep()+'1_03_example.sci';
clc;
exec(datafile)
m = rho * V; //mass volume relation
printf("\n Mass of oil: %1.2f kg", m);
