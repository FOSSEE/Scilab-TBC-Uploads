//Solution 5-08
WD=get_absolute_file_path('5_08_solution.sce');
datafile=WD+filesep()+'5_08_example.sci';
clc;
exec(datafile)
h_3 = h_3 / 100; //conversion from [cm] to [m]
V_1 = sqrt(2 * g * h_3); //application of Bernoulli equation
printf("Velocity of water in pipe is %1.2f m/s", V_1);
