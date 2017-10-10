//Example 17.2//

n=23*10^18; //m^-3  //density of conduction electron
q=0.16*10^-18;//C //one elementary charge
ue=0.364;//m^2/(V.s) //electron mobility of germanium
uh=0.190;//m^2/(V.s)//hole mobility of germanium
si=n*q*(ue+uh)
mprintf("si = %f ohm^-1 m^-1",si)
Eg=0.66;//eV //band gap
k=(86.2*10^-6);//eV/K //Boltzmann constant
T=300;//K //absolute temperature
s0=si*%e^(Eg/(2*k*T))
mprintf("\ns0 = %e ohm^-1 m^-1",s0)
//Then
T1=473;//K //absolute temperature
s2=s0*%e^-(Eg/(2*k*T1))
mprintf("\ns2 = %i ohm^-1 m^-1",s2)
