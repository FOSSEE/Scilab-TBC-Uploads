//Example 15.5//

a=5.6;//eV //energy band gap
b=2;//ev //given
E=a/b
//Using T=25 degree C= 298K
mprintf("E = %f eV",E)
T=298;//K //temperature
k=86.2*10^-6;//eV K^-1//Boltzmann's constant 
c1=(%e^(E/(k*T)))+1
//mprintf("c1 = %e ",c1)
fE=1/c1
mprintf("\n fE = %e ",fE)
