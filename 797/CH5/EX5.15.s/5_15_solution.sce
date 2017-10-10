//Solution 5-15
WD=get_absolute_file_path('5_15_solution.sce');
datafile=WD+filesep()+'5_15_example.sci';
clc;
exec(datafile)
Wdot_shaft = Wdot_shaft * 1000;
Wdot_pump = eta_pump * Wdot_shaft / 100;
mdot = Wdot_pump / (g * (z_2 + h_L)); //energy equation
Vdot = mdot / rho;
printf("Discharge rate of water is %1.4e m^3/s i.e %1.4f L/s", Vdot, Vdot * 1000);
deltaP = Wdot_pump / Vdot;
printf("\nPressure difference across the pump is %1.2f kPa", deltaP / 1000);