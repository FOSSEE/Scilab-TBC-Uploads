// chapter 7 , Example 7.6 , pg 211
Nd=10^16     //donor concentration (in cm^-3)
ni=1.45*10^10     //intrinsic concentration  (in cm^-3)
T=300     //temperature    (in K)
e=1.6*10^-19    //charge of electron    (in C)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
E=k*T*log(Nd/ni)      //E=(Efd-Ei)   Fermi energy  with respect to  Fermi energy in intrinsic Si
printf("Fermi energy  with respect to  Fermi energy in intrinsic Si(in eV)")
disp(E/e)
