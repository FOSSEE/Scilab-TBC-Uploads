// chapter 6 , Example6 15 , pg 179
m=9.11*10^-31    //mass of electron (in Kg)
k=1.38*10^-23   //boltzmann constant   (in J/K)
e=1.6*10^-19    //electronic charge(in C )
Vf=0.86*10^6   //Fermi velocity of electron  (in m/s)
Ef=(m*Vf^2)/(2*e)    //Fermi energy   (in eV)
Tf=(Ef*e)/k   //Fermi temperature
printf("Fermi energy=")
printf("Ef=%.1f  eV \n",Ef)
printf("Fermi temperature =")
printf("Tf=%.0f  K",Tf)
