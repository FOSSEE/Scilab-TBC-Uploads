// Scilab Code Ex2.5 : Page-47 (2010)
E_peak = 6;    // Peak value of electric field intensity, V/m
c = 3e+08;    // Speed of electromagnetic wave in free space, m/s
mu_0 = 4*%pi*1e-07;    // Absolute permeability of free space, tesla metre per ampere
epsilon_0 = 8.854e-012;    // Absolute permittivity of free space, farad/m
mu_r = 1;    // Relative permeability of medium
epsilon_r = 3;    // Relative permittivity of the medium
v = c/sqrt(mu_r*epsilon_r);    // Wave velocity, m/s
eta = sqrt((mu_0/epsilon_0)*(mu_r/epsilon_r));    // Intrinsic impedance of the medium, ohm
H_P = E_peak*sqrt((epsilon_0*epsilon_r)/(mu_0*mu_r));    // Peak value of the magnetic intensity, ampere per metre
printf("\nThe wave velocity = %5.3e m/s", v);
printf("\nThe intrinsic impedance of the medium = %6.2f ohm", eta);
printf("\nThe peak value of the magnetic intensity = %4.2e A/m", H_P);

// Result 
// The wave velocity = 1.732e+008 m/s
// The intrinsic impedance of the medium = 217.51 ohm
// The peak value of the magnetic intensity = 2.76e-002 A/m 