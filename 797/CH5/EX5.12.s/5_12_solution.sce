//Solution 5-12
pathname=get_absolute_file_path('5_12_solution.sce');
filename=pathname+filesep()+'5_12_example.sci';
clc;
exec(filename)
P_1 = P_1 * 1000; //pressure conversion from [kPa] to [Pa]
P_2 = P_2 * 1000;
Vdot = Vdot / 1000; //conversion from [L/s] to [m^3/s]
eta_motor = eta_motor / 100;
Wdot_electric = Wdot_electric * 1000; //conversion from [kW] to [W]
c = c * 1000;
//(a)
mdot = rho * Vdot; //mass flow rate of water
Wdot_pumpshaft = eta_motor * Wdot_electric; //efficiency relation between motor and pump
deltaEdot_mechfluid = mdot * (P_2 - P_1)/rho;
eta_pump = deltaEdot_mechfluid / Wdot_pumpshaft * 100; //from efficiency relation
printf("Efficiency of pump is %1.4f percent", eta_pump);
//(b)
Edot_mechloss = Wdot_pumpshaft - deltaEdot_mechfluid; //energy lost
deltaT = Edot_mechloss / (mdot * c);
printf("\nTemperature rise of water as it flows through the pump is %1.3f degree C", deltaT);
