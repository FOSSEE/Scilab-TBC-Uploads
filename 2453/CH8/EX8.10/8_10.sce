//To calculate the temperature
Eg = 1;      //band gap, eV
e = 1.602*10^-19;
Eg = Eg*e;     //band gap, J
me = 1;     //for simplicity assume me to be unity
mh = 4*me;     //effective mass of holes is 4 times of electrons
E_Ef = 10/100;     //fermi level shift, eV
E_Ef = E_Ef*e;     //fermi level shift, J
k = 1.38*10^-23;     //boltzmann constant
//E_Ef = 3*k*T*log(mh/me)/4
T = 4*E_Ef/(3*k*log(mh/me));      //temperature, K
printf("temperature is %d K",T);
