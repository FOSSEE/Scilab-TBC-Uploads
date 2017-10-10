//Example 17.6//

s=100;//ohm^-1 m^-1 //preexponential constant
k=86.2*10^-6;//eV K^-1 //Boltzmann constant
T=298;//K //Temperature
Eg=1.0;//eV // band gap
Ed=0.9;//eV //donor level
//AT 25 degree C
s0=s*%e^((Eg-Ed)/(k*T))
mprintf("s0 = %e ohm^-1 m^-1",s0)
//At 30degree C
T1=303;//K//temperature
s=s0*%e^-((Eg-Ed)/(k*T1))
mprintf("\ns = %i ohm^-1 m^-1",s)
