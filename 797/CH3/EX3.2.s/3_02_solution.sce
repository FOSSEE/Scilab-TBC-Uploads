//Soultion 3-02
WD=get_absolute_file_path('3_02_solution.sce');
datafile=WD+filesep()+'3_02_example.sci';
clc;
exec(datafile)
h = h / 1000; //converting height of Hg column from [mm] to [m]
P = rho * g * h; //Basic pressure eqaution [Pa]
P = P / 1000;
//result
printf("Atmospheric pressure is %1.1f kPa", P);
