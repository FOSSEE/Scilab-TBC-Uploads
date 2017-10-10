////
//Variable Declaration
g0 = 3.0  
labda = 1263e-9       //Wave length in nm
T = 500.              //Temperature, K
c = 3.00e8            //Speed of light, m/s
NA = 6.022e23         //Avagadro's Number, 1/mol
k = 1.38e-23          //Boltzmann constant, J/K
n = 1.0               //Number of moles, mol
h = 6.626e-34         //Planks's Constant, J.s

//Calcualtions
beta = 1/(k*T)
eps = h*c/labda
qE = g0 + exp(-beta*eps)
UE = n*NA*eps*exp(-beta*eps)/qE

//Results
printf("\n Energy of excited state is %4.2e J",eps)

printf("\n Electronic partition function qE is %4.3e",qE)

printf("\n Electronic contribution to internal enrgy is %4.3e J",UE)

