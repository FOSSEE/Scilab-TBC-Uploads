//Example 17.5//

a=1.107;//eV //band gap
b=2;//eV //given
c=0.1;//eV //Fermi level shifted upward
E=(a/b)-c
mprintf("E = %f eV",E)
k=86.2*10^-6;//eV k^-1//Boltazmann constant
T=298;//K //Temperature
fE=1/((%e^(E/(k*T)))+1)
mprintf("\nfE = %e ",fE)
