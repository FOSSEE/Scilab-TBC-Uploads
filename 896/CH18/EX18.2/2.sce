clc
//Example 18.2
//Calculate the energy per unit mass and heat dissipation rate
v=0.82//m/s
energy_per_unit_mass=v^2/2//J/Kg
printf("The energy per unit mass is %f J/Kg\n",energy_per_unit_mass);
//Let dissipation rate be denoted by eta
//Let D denote d/dL
DP=0.0286//Pa/m
rho=1.2//Kg/m^3
eta=DP*v/rho//m^2/s^3 or J/Kg/s
printf("The heat dissipation rate is %f J/Kg/s",eta);