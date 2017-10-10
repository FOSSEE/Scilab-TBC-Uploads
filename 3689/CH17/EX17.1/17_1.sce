//////
//Variable Declaration
M = 0.040                  //Molecualar wt of Argon, kh/mol
P = 101325.0    //Pressure and Temperature, Pa, K
 T = 298.0 
sigm = 3.6e-19  //
R = 8.314                  //Molar Gas constant,  mol^-1 K^-1
N_A = 6.02214129e+23       //mol^-1
//Calculations
DAr = (1./3)*sqrt(8*R*T/(%pi*M))*(R*T/(P*N_A*sqrt(2)*sigm))

//Results
printf("\n Diffusion coefficient of Argon %3.1e m2/s",DAr)

