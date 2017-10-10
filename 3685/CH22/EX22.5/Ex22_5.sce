clc
// Given that
p = 1 // Pressure in atm
t = 300 // Temperature in K
F = 5 // For oxygen gas degree of freedom
printf("\n Example 22.5 \n")
v = 445 // In m/s as given in the book
m = 5.31e-26 // Mass of oxygen molecule in kg
sigma = 3.84e-19 // As given in the book in m^2
k = (1/6)*(v*F*(1.38*10^-23))/sigma
// If the gas has Maxwellian velocity distribution,
k_ = (1/3)*(F*(1.38*10^-23)/sigma)*((1.38*10^-23)*t/(%pi*m))^(1/2)
printf("\n Thermal conductivity  = %f W/mK,\n If the gas has Maxwellian velocity distribution,\n Thermal conductivity = %f W/mK",k,k_)

