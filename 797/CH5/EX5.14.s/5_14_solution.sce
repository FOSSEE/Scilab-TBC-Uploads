//Solution 5-14
pathname=get_absolute_file_path('5_14_solution.sce')
filename=pathname+filesep()+'5_14_example.sci'
clc;
exec(filename)
eta_fan = eta_fan / 100;
D = D / 100;
//(a)
V = 0.5 * V / 10^6; //volume of air [m^3]
Vdot = V / deltat; //volume flow rate of air
mdot = rho_air * Vdot; //mass flow rate of air
A = %pi * D^2 / 4; //cross-sectional area of the opening in case
V_2 = Vdot / A;
Wdot_fan = mdot * alpha_2 * V_2^2 / 2 //application of Bernoulli equation between 1 and 2
Wdot_elect = Wdot_fan / eta_fan;
printf("The wattage of the fan motor unit to be purchased is %1.4f W", Wdot_elect);
//(b)
dP = rho_air * Wdot_fan / mdot; //from energy equation between 3 and 4
printf("\nPressure defference across the fan is %1.2f Pa", dP);
