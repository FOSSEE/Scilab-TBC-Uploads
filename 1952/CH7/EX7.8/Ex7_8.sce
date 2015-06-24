// chapter 7 , Example 7.8 , pg 212
rho=2.12    //resistivity   (in ohm*m)
T=300   //temperature   (in K)
Un=0.36    //electron mobility   (in m^2/(V*s))
Up=0.17     //hole mobility     (in m^2/(V*s))
h=6.625*10^-34    //plancks constant    (in m^2*Kg*S^-1)
k=1.38*10^-23     //Boltzmann constant    (in J/K)
e=1.6*10^-19     //charge in electron  (in C)
Me=9.11*10^-31   //mass of electron    (in Kg)
Mn=0.5*Me     //electron effective mass
Mp=0.37*Me     //hole effective mass
ni=1/(rho*e*(Un+Up))     //intrinsic concentration   (in m^-3)
Nc=2*((2*%pi*k*T)/h^2)^(3/2)*(Mn)^(3/2)      //effective density of states in conduction band (in m^-3)
Nv=2*((2*%pi*k*T)/h^2)^(3/2)*(Mp)^(3/2)      //effective density of states in valence band (in m^-3)
Eg=2*k*T*log(sqrt(Nc*Nv)/ni)        //Forbidden energy gap
printf("Forbidden energy gap=")
printf("Eg=%.3f  eV",Eg/e)
