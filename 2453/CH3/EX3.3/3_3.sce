//To calculate the de Broglie wavelength
m = 1.674*10^-27;     //mass of neutron, kg
h = 6.626*10^-34;    //planck's constant
e = 1.6*10^-19;
KE = 0.025;     //kinetic energy, eV
E = KE*e;     //kinetic energy, J
lamda = h/sqrt(2*m*E);      //de Broglie wavelength, m
lamda_nm = lamda*10^9;      //de Broglie wavelength, nm
printf("de Broglie wavelength is %5.3f nm",lamda_nm); 
