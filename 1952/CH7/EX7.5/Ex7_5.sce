// chapter 7 , Example 7.5 , pg 210
T=300    //temperature    (in K)
Un=0.4   //electron mobility    (in m^2/(V*s))
Up=0.2   //hole mobility    (in m^2/(V*s))
e=1.6*10^-19     //charge of electron (in C)
h=6.625*10^-34    //plancks constant    (in m^2*Kg*S^-1)
Eg=0.7     //bandgap   (in eV)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
Me=9.11*10^-31   //mass of electron    (in Kg)
Mn=0.55*Me     //electron effective mass
Mp=0.37*Me     //hole effective mass
ni=2*((2*%pi*k*T)/h^2)^(3/2)*(Mn*Mp)^(3/4)*exp(-(Eg*e)/(2*k*T))     //intrinsic concentration
sigma=ni*e*(Un+Up)     //intrinsic conductivity
rho=1/sigma      //intrinsic resistivity
printf("Intrinsic concentration (in m^-3)")
disp(ni)
printf("Intrinsic conductivity (in /(ohm*m)")
disp(sigma)
printf("Intrinsic resistivity  (in ohm*m)")
disp(rho)


//answer given is wrong
