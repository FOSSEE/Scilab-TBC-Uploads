//variable initialization
h=6.63*10^-34;                                                                  //planck's constant (joule-second)
m_H2=2*1.67*10^-27;                                                             //mass of hydrogen molecule (kg)
T=27+273;                                                                       //room temperature (kelvin)
k=1.38*10^-23;                                                                  //Boltzmann constant (joule/kelvin)

//calculation of de Broglie wavelength of hydrogen molecule
lembda=(h*10^10)/(2*m_H2*k*T)^(1/2);                                            //de Broglie wavelength of hydrogen molecule (Å)

printf("\nThe de Broglie wavelength of hydrogen molecules at their most probable speed = %.2f Å",lembda);
