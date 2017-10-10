//Solution 11-1
WD=get_absolute_file_path('11_01_solution.sce');
datafile=WD+filesep()+'11_01_example.sci';
clc;
exec(datafile)
//unit conversions
V = V * 1000 / 3600; //from [km/h] to [m/s]
P = P * 1.01325 * 10**5; //from [atm] to [Pa]
T = T + 273; //from [C] to [K]
rho_air = P / ( R * T);
C_D = 2 * F_D / (rho_air * A * V**2);
printf("Drag coefficient is %1.2f", C_D);