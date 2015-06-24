//example-26.2
//page no-769
//given
////thickness of sample
t=0.45*10^-4  //cm
//energy of light
E1=3  //eV
//absorption coefficient
alpha=50000  //per cm
//incident power on the sample
I0=15*10^-3  //W
//we know that
//intensity of transmitted light is given by
It=I0*exp(-alpha*t)  //W or J/s
//thus total energy absorbed is 
Iabsorbed=I0-It  //W or J/s
printf ("total energy absorbed is %e J/s",Iabsorbed)
//plank's constant
h=6.626*10^-34  //J s
//energy of outgoing radiation
E2=2.35  //eV
//fraction of each photon energy unit which is converted ton heat
E=(E1-E2)/E1  
//therefore total amount of energy converted to heat per second is
EC=E*Iabsorbed  //J/s
printf ("total amount of energy coverted to heat is %e J/s",EC)
//charge on an electron
e=1.6*10^-19  //C
//no of photons = nphoton 
nphoton=Iabsorbed/(e*E1)  //photons/sec  (calculation mistake is there in book)
printf ("the no of photon given off from recombination is %e photons/sec",nphoton)
