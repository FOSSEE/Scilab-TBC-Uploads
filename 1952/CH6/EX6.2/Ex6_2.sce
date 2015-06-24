// chapter 6 , Example6 2 , pg 170
Ef0=7.04*1.6*10^-19   // Fermi energy at 0 K  (converting eV into J)
T=300     //temperature    (in K)
k=1.38*10^-23    //boltzmann  constant  (in (m^2*Kg)/(s^2*K^-1))
Ef=Ef0*(1-(%pi^2*(k*T)^2)/(12*Ef0^2))    //Fermi energy at 300 K  (in J)
printf("Fermi energy at 300 K =")
printf("Ef=%.4f  eV",(Ef/(1.6*10^-19)))   //converting J into eV
