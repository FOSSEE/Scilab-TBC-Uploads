//Solution 1-06
WD=get_absolute_file_path('1_06_solution.sce');
datafile=WD+filesep()+'1_06_example.sci';
clc;
exec(datafile)
Vdot = V / deltat; //volume flow rate [gal/s]
Vdot = Vdot * gal_cubicm * 60; //volume flow rate [m^3/min]
//result
printf("Volume flow rate of water = %1.1e m\^3/min", Vdot);
