//Example 15.6//

a=1.107;//eV //conduction band in silicon
b=2;//eV//electron volt //Given
E=a/b
mprintf("E = %f eV",E)
k=86.2*10^-6;//eVk^-1 //Boltzmann's constant 
T=298;//k //kelvin //Temperature
c=(%e^(E/(k*T)))+1
//mprintf("c = %e ",c)
fE=1/c
mprintf("\nfE = %e ",fE)
