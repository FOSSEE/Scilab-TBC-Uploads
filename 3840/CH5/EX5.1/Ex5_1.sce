clear
//
//
//

//Variable declaration
E_EF=0.5     //fermi energy(eV)
FE=1/100     //probability
Kb=1.381*10**-23     //boltzmann constant(J/k)
x=6.24*10**18    

//Calculation
KB=Kb*x
y=E_EF/KB
T=y/log(1/FE)      //temperature(K)

//Result
