clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.4   Page 902 \n')// Example 14.4

// The rate of change of the helium pressure dp/dt

D = .2             ;//[m] Diameter
L = 2*10^-3        ;//[m] Thickness
p = 4              ;//[bars] Helium Pressure
T = 20+273         ;//[K] Temperature
//Table A.8 helium-fused silica (293K) Page 952
Dab = .4*10^-13        ;//[m^2/s] Diffusion coefficient
//Table A.10 helium-fused silica (293K)
S = .45*10^-3        ;//[kmol/m^3.bar] Solubility

// By applying the species conservation Equation 14.43 and 14.62
dpt = -6*(.08314)*T*(Dab)*S*p/(L*D);

printf('\n The rate of change of the helium pressure dp/dt %.2e bar/s',dpt);
//END