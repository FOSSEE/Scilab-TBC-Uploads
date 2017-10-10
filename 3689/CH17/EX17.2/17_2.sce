////
//Variable Declaration
DHebyAr = 4.0 
MAr = 39.9       //Molecualar wt of Argon and Neon, kg/mol
MHe = 4.0
P  = 101325.0     //Pressure and Temperature, Pa, K
T  =  298.0
sigm = 3.6e-19  //
R = 8.314                  //Molar Gas constant,  mol^-1 K^-1
N_A = 6.02214129e+23       //mol^-1
//Calculations
sigHebyAr = (1./DHebyAr)*sqrt(MAr/MHe)

//Results
printf("\n Ratio of collision cross sections of Helium to Argon %4.3f",sigHebyAr)

