//Solution 2-5
WD=get_absolute_file_path('2_05_solution.sce')
datafile=WD+filesep()+'2_05_example.sci'
clc;
exec(datafile)
//conversion
l = l / 100; //from [cm] to [m]
L = L / 100; //from [cm] to [m]
R = d_o / (2 * 100);
mu = T * l / (4 * %pi**2 * R**3 * ndot / 60 * L);
printf("Viscocity of fluid is measured to be %1.3f N.s/m^2", mu);