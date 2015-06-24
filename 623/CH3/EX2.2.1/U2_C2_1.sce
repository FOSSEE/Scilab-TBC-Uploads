//variable initialization
m=9.1*10^-31;                                                                   //mass of electron (kg)
h=6.6*10^-34;                                                                   //planck's constant (joule-second)
e=1.6*10^-19;                                                                   //charge of electron (coulomb)

//calculation of wavelength of electron
a=(h*10^10)/(2*m*e)^(1/2);                                                              //wavelength of electron = h/(2*m*e*v)^(1/2) (Å)

printf("\n Wavelength of electron accelerated through a potential difference V = %.1f/V^0.5 Å",a);
