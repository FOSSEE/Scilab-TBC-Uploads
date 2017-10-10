//Example 13.11
v=11.1*10^3;//Escape velocity (m/s)
v_rms=v;//RMS speed (m/s)
molar_m=4.0026*10^-3;//Molar mass (kg/mol)
N_A=6.02*10^23;//Avogadro's number (mol^-1)
m=molar_m/N_A;//Mass of Helium atom (kg)
k=1.38*10^-23;//Boltzmann constant (J/K)
T=m*v_rms^2/(3*k);//Temperature (K)
printf('Temperature = %0.2e K',T)
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
