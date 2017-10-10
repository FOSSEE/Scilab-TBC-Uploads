////
//Variable Declaration
U = 1.00e3            //Total internal energy, J
hnu = 1.00e-20        //Energy level separation, J
NA = 6.022e23         //Avagadro's Number, 1/mol
k = 1.38e-23          //Boltzmann constant, J/K
n = 1                 //Number of moles, mol

//Calcualtions
T = hnu/(k*log(n*NA*hnu/U-1.))

//Results
printf("\n For Internal energy to be %4.1f J temperature will be %4.1f K",U,T)

