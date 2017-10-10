//Example 17.3//

T1=293;//K //Temperature
T2=373;//K //Temperature
k=86.2*10^-6;//eV/K //Boltzmann constant
T3=1100;//ohm^-1 m^-1 //conductivity
T4=250;//ohm^-1 m^-1 //conductivity
Eg=-(2*k*(log(T3/T4)))/((1/T2)-(1/T1))
mprintf("Eg = %f eV",Eg)
