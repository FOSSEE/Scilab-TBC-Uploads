//Solution 5-03
WD=get_absolute_file_path('5_03_solution.sce');
datafile=WD+filesep()+'5_03_example.sci';
clc;
exec(datafile)
Wdot_elect = Wdot_elect * 10^3; //conversion into [W]
eta_generator = eta_generator / 100; //cenversion from [%] to fraction
//(a)
deltae_mech = g * h; //change in mechanical energy per unit mass [J/kg]
deltaE_mech = mdot * deltae_mech; //Total change in mechanical energy [W]
printf("Rate of mechanical energy supply to turbine is %1.2f kW", deltaE_mech / 1000);
eta_overall = Wdot_elect / deltaE_mech; //efficiency=output/input
printf("\nOverall efficiency is %1.4f", eta_overall);
//(b)
eta_turbine = eta_overall / eta_generator; //efficiency relations
printf("\nTurbine efficiency is %1.4f", eta_turbine);
Wdot_shaft = eta_turbine * deltaE_mech; //work=efficiency*energy supplied
printf("\nShaft power output from turbine is %1.2f kW", Wdot_shaft / 1000);
