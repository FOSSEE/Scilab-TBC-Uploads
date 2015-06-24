//To calculate the diffusion coefficient of electrons
mew_e = 0.19;      //electron mobility, m^2/Vs
k = 1.38*10^-23;     //boltzmann constant
T = 300;     //temperature, K
e = 1.6*10^-19;
Dn = mew_e*k*T/e;     //diffusion coefficient, m^2/s
printf("diffusion coefficient of electrons is %f m^2/s",Dn);
