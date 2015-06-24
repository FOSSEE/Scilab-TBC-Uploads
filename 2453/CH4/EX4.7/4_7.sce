
//To calculate the temperature
F_E = 10;      //probability in percent
k = 1.38*10^-23;
e = 1.6*10^-19;    //conversion factor
EF = 5.5;      //fermi energy, eV
E = EF+(EF/100);     //energy, eV
X = E-EF;     //E-EF, eV
X = X*e;      //E-EF, J
T = X/(k*log(F_E-1));      //temperature, K
printf("temperature is %5.1f K",T);
