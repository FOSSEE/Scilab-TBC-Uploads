//Example 5.2//
nv=2.29*10^-5;//the fraction of aluminium lattice sites vacant 
Ev=0.76;//eV //elevtrom volts
k=86.2*10^-6;//eV //Boltzmann's constant
T=673;//K //Kelvin //absolute temperature
T1=933;// K //Kelvin //absolute temperature
//At 400degree C(=673K)
a=Ev/(k*T)// solving the exponential raise to equation
//mprintf("a = %f ",a)
C=nv*%e^a
mprintf("C = %f",C)
//At 660 degree C (=993K)
b=Ev/(k*T1)//solving the exponential raise to equation
//mprintf("b = %f ",b)
N=C*%e^-b
mprintf("\nN = %e ",N)
mprintf("\nor roughly nine vacancies occur for every 10,000 lattice sites ")
