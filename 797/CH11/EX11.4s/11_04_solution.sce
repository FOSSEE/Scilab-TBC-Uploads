//Solution 11-4
WD=get_absolute_file_path('11_04_solution.sce');
datafile=WD+filesep()+'11_04_example.sci';
clc;
exec(datafile)
//unit conversions
D = D / 100; //from [cm] to [m]
Re = rho * V * D / mu; //Reynolds number
A = L * D; //average frontal area
C_D = 1;
F_D = C_D * A * rho * V**2 / 2; //drag force acting
printf("Hence the drag force acting on the pipe is %1.0f N", F_D);