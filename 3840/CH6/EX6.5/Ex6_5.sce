clear
//
//
//

//Variable declaration
epsilonr=5     //relative permittivity
V=12           //potential(V)
d=2*10**-3     //separation(m) 
epsilon0=8.85*10**-12    

//Calculation
P=epsilon0*(epsilonr-1)*V/d     //polarisation(C-m)

//Result
printf("\n polarisation is %0.3f  *10**-9 C-m",P*10**9)
