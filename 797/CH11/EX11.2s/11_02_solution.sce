//Solution 11-2
WD=get_absolute_file_path('11_02_solution.sce');
datafile=WD+filesep()+'11_02_example.sci';
clc;
exec(datafile)
//unit conversions
L = L * 10**3; //from [km] to [m]
V = V * 1000/3600; //from [km/h] to [m/s]
HV = HV * 1000; //from [kJ/kg] to [J/kg]
eta = eta / 100; //from [%] to fraction
A = W * H; //frontal area of car [m^2]
F_D = C_D * A * rho_air * V**2 / 2; //drag force
W_drag = F_D * L; //work done to overcome drag
E_in = W_drag / eta; //required energy to do work
amt_fuel = (E_in / HV) / rho; //amount of fuel that supplied E_in energy
cost = amt_fuel * price; //cost of fuel per year in $
A_new = W * H_new; //new frontal area of car
red_ratio = (A - A_new) / A; //as % reduction directly proportional to A
fuel_saved = red_ratio * amt_fuel; //amount of fuel saved
cost_saved = red_ratio * cost; //amount of money saved
printf("By reducing height from %1.2f m to %1.2f m\n", H, H_new);
printf("\t The amount of fuel saved is %1.f L/year\n", fuel_saved);
printf("\t The amount of money saved is $%1.f/year\n", cost_saved);