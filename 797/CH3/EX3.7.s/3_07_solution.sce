//Soultion 3-07
WD=get_absolute_file_path('3_07_solution.sce');
datafile=WD+filesep()+'3_07_example.sci';
clc;
exec(datafile)
//converting pressures into [Pa]
P_atm = P_atm * 1000;
P_1 = P_1 * 1000;
h_3 = (P_1 - P_atm + rho_water * g *h_1 + rho_oil * g * h_2) / (rho_seawater * g); //pressure eqquilibrium
printf("If mercury is changed to seawater the height of seawater will be %1.2f m", h_3);
