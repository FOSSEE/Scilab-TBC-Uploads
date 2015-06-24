// chapter 7 , Example 7.11 , pg 214
T=300    //temperature    (in K)
e=1.6*10^-19     //charge of electron (in C)
h=6.625*10^-34    //plancks constant    (in m^2*Kg*S^-1)
Eg=1.1     //bandgap   (in eV)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
Me=9.11*10^-31   //mass of electron    (in Kg)
Mn=0.31*Me     //electron effective mass
ni=2*((2*%pi*k*T*Mn)/h^2)^(3/2)*exp(-(Eg*e)/(2*k*T))     //intrinsic concentration
printf("Intrinsic concentration (in m^-3)")
disp(ni)
