//Solution 5-05
WD=get_absolute_file_path('5_05_solution.sce');
datafile=WD+filesep()+'5_05_example.sci';
clc;
exec(datafile)
P_gauge = P_gauge * 1000; //conversion from [kPa] to [Pa]
z_2 = P_gauge / (rho * g); //from Bernoulli equation
printf("The water jet can rise as high as %1.4f m into the sky", z_2);
