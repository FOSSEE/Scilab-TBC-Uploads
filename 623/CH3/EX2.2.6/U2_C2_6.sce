//variable initialization
h=6.63*10^-34;                                                                  //planck's constant (joule-second)
m_n=1.67*10^-27;                                                                //mass of neutron (kg)
T=300                                                                           //Temperature (kelvin)
k=1.38*10^-23;                                                                  //Boltzmann constant (joule/kelvin)

//calculation of the wavelength of thermal neutron
E=(3*k*T)/2;                                                                    //Kinetic energy of thermal neutron (joule)
lembda=(h*10^10)/(2*m_n*E)^(1/2);                                               //Wavelength of thermal neutron (Å)

printf("\nThe wavelength of thermal neutron = %.2f Å",lembda);
