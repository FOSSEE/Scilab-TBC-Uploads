//Solution 2-6
WD=get_absolute_file_path('2_07_solution.sce')
datafile=WD+filesep()+'2_07_example.sci'
clc;
exec(datafile)
//conversion
h = h /100; //from [cm] to [m]

deltaP = rho * g * h
deltaP = deltaP / 10**5; //conversion from [N/m^2] to [atm]
printf("The pressure at top of water column is less than atm pressure by %1.3f atm", deltaP);