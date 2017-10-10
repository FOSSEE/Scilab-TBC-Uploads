//Example 17.12//

n=(1.4*10^12);//m^-3 //density of charge carrier
q=(0.16*10^-18);//C // Coulomb of Charge
ue=0.720;//m^2 /(V s) //Electron mobility of GaAs
uh=0.020;//m^2 /(V s) //Hole mobility of GaAs
s=n*q*(ue+uh)
mprintf("s = %e ohm^-1 m^-1",s)
Eg=1.47;//eV //band gap
k=86.2*10^-6;//eV/K //Boltzmann constant
T=300;//K //absolute temperature
s0=s*%e^((Eg)/(2*k*T))
mprintf("\ns0 = %e ohm^-1 m^-1 ",s0)
T2=323;//k //absolute temperature
s50=s0*%e^-((Eg)/(2*k*T2))
mprintf("\ns50 = %e ohm^-1 m^-1",s50)
