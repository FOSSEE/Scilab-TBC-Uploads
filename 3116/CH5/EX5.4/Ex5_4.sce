


clc
// given that
Na=6.023*10^23 //Avogadro No.
rho=1.955 //Density of KCl in g/cm^3
A_k= 39.10 //Atomic weight of potassium in g/mol
A_cl= 35.45 //Atomic weight of Chlorine in g/mol
Qs=2.6 //Activation energy in eV
k=8.62*10^-5 //Boltzmann Constant in eV/K
T=500+273 //Temperature in K

printf("Example 5.4\n")
A = A_k+A_cl // Molar mass of KCl in gram
N=Na*rho*1e6/A //No. of atomic site per cubic meter
Ns=N*exp(-Qs/(2*k*T))
printf("\n Number of Schottky defects are %.2e defects/m^3.",Ns)

