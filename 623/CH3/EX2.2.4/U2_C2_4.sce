//variable initialization
e=1.6*10^-19;                                                                   //charge of electron (coulomb)
T=100*e;                                                                        //kinetic energy (joule)
m_e=9.1*10^-31;                                                                 //mass of electron (kg)
m_p=1.67*10^-27;                                                                //mass of proton (kg)
m_alpha=4*m_p;                                                                  //mass of alpha particle (kg)
h=6.63*10^-34;                                                                  //planck's constant (joule-second)

//calculation of de Broglie wavelengths
lembda_e=(h*10^10)/(2*m_e*T)^(1/2);                                             //de Broglie wavelength of electron (Å)
lembda_p=(h*10^10)/(2*m_p*T)^(1/2);                                             //de Broglie wavelength of proton (Å)
lembda_alpha=(h*10^10)/(2*m_alpha*T)^(1/2);                                     //de Broglie wavelength of alpha particle (Å)

printf("\nde Broglie wavelength of electron = %.2f Å\nde Broglie wavelength of proton = %.3f Å\nde Broglie wavelength of alpha particle = %.3f Å",lembda_e,lembda_p,lembda_alpha);
