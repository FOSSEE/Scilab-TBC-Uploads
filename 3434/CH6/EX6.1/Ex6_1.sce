clc
// Given data 

T=27 +273 // temperature converted in kelvin\n",
NV=1e22 // effective density of states in valence band in cm^(-3)\n",
NA=1e19 // acceptor density in cm^(-3)\n",
k=8.629*10**(-5) // boltzmann constant in eV/K\n",
EFV=k*T*log(NV/NA) // closeness of fermi level i.e Ef-Ev\n",
printf("Closeness of fermi level with valence bond is %.4f eV",EFV)

