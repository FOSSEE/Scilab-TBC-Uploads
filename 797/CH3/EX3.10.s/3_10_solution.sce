//Solution 3-10
WD=get_absolute_file_path('3_10_solution.sce');
datafile=WD+filesep()+'3_10_example.sci';
clc;
exec(datafile)
R = D / 2 / 100; //radius of cylinder [m]
h = h / 100;
m = rho * (%pi * R**2 * h);
printf("The mass of lead required for hydrostat to attain depth of 10cm is %1.5f kg", m);
