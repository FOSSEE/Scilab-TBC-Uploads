//Solution 5-01
WD=get_absolute_file_path('5_01_solution.sce');
datafile=WD+filesep()+'5_01_example.sci';
clc;
exec(datafile)
d_e = d_e / 100; //conversion from [cm] to [m]
d_hose = d_hose / 100;
rho = rho * 1000; //conversion from [kg/L] to [kg/m^3]
//(a)
Vdot = V / dt * 3.7854; //volume flow rate [L/s]
printf("\nVolume flow rate is %1.4f L/s", Vdot);
Vdot = Vdot / 1000; //conversion from [L/s] to [m^3/s]
mdot = rho * Vdot;
printf("\nMass flow rate is %1.4f kg/s", mdot);
//(b)
A_e = %pi * (d_e / 2)^2; //cross-sectional area of nozzle at exit
V_e = Vdot / A_e; //from continuity equation
printf("\nAverage velocity of water in nozzle is %1.2f m/s", V_e);
A_hose = %pi * (d_hose / 2)^2; //cross-sectional area of hose
V_hose = Vdot / A_hose;
printf("\nAverage velocity of water in hose is %1.2f m/s", V_hose);
