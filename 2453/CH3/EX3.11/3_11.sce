//To calculate the velocity and kinetic energy of electron
h = 6.626*10^-34;      //planck's constant, J sec
m = 9.1*10^-31;      //mass of electron, kg
e = 1.6*10^-19;
lamda = 1.66*10^-10;     //wavelength, m
v = h/(m*lamda);      //velocity of electron, m/sec
v_km = v*10^-3;      //velocity of electron, km/sec
printf("velocity of electron is %d km/sec",v_km);
KE = (1/2)*m*v^2;    //kinetic energy, J
KE_eV = KE/e;        //kinetic energy, eV
printf("kinetic energy of electron is %5.2f eV",KE_eV);
