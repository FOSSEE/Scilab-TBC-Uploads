clc
//given that
lambda = 1// wavelength in m/s
m_e = 9.1e-31 // Mass of electron in Kg
m_p = 1.67e-27 // Mass of proton in kg
c = 3e8 // speed of light in m/s
h = 6.63e-34 // Plank constant
printf("Example 1.14")
p_p = h/(lambda*1e-10) // Momentum of photon
p_e = h/(lambda*1e-10) // Momentum of electron
E_e = p_e^2/(2*m_e) +m_e*c^2 // Total energy of electron
E_p = h*c/(lambda*1e-10) // Total energy of photon
K_e = p_e^2/(2*m_e) // Kinetic energy of electron 
K_p = h*c/(lambda*1e-10)// Kinetic energy of photon
r_K = K_e/K_p // Ratio of kinetic energies
printf("\n Momentum of photon is %e Kgm/s while Momentum of electron is %e Kgm/s \n which are equal.",p_p,p_e)
printf("\n Total Energy of photon is %f KeV while Total Energy of electron is %f MeV ",E_p/(1.6e-19*1e3),E_e/(1.6e-19*1e6))
printf("\n Ratio of kinetic energies is %e \n\n\n",r_K)
