//Example 13.10
T=20;//Temperature (C)
T=T+273;//Temperature (K)
k=1.38*10^-23;//Boltzmann constant (J/K)
KE=3/2*k*T;//Kinetic energy (J)
printf('a.Average kinetic energy of the gas molecule = %0.2e J',KE)
M=2*14.0067*10^-3;//Molecular mass of nitrogen N2 (kg/mol)
N_A=6.02*10^23;//Avogadro's number (mol^-1)
m=M/N_A;//Mass of nitrogen molecule (kg)
v_rms=sqrt(3*k*T/m);//RMS speed (m/s)
printf('\nb.RMS speed of the nitrogen molecule = %0.1f m/s',v_rms)
//Answer varies due to round off error
//Openstax - College Physics
//Download for free at http://cnx.org/content/col11406/latest
