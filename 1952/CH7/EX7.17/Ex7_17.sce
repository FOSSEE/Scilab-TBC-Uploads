// chapter 7 , Example7.17 , pg 216
Eg=1.12    //bandgap   (in eV)
T=300   //temperature    (in K)
Me=9.11*10^-31    //mass of electron   (in Kg)
Mn=0.12*Me
Mp=0.28*Me
k=1.38*10^-23    //Boltzmann constant   (in (m^2*Kg)/(s^2*K))
Ef=(Eg/2)+((log(Mp/Mn)*3*k*T)/(4*1.6*10^-19))
printf("position of Fermi level")
printf("Ef=%.3f   eV",Ef)
