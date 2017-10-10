//Solution 2-2
WD=get_absolute_file_path('2_02_solution.sce')
datafile=WD+filesep()+'2_02_example.sci'
clc;
exec(datafile)
printf("Minimum pressure allowed in the system to avoid cavitation is %1.2f kPa", P)
