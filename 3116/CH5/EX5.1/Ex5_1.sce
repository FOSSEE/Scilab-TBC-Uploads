

clc
// given that
Na=6.023*10^23 //Avogadro No.
rho=8.4e6 //Density of Copper in g/m^3
A=63.5 //Atomic weight of Copper
Qv=0.9 //Activation energy in eV
k=8.62*10^-5 //Boltzmann Constant in eV/K
T=1000+273//Temperature in K
printf("Example 5.1\n");
N=Na*rho/A //No. of atomic site per cubic meter
Nv=N*exp(-Qv/(k*T))
printf("\n Equilibrium number of vacancies/m^3 is %.1e for 1273K",Nv)

