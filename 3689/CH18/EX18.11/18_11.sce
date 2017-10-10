//////Variable Declaration
Ea = 104e3      //Activation energy for reaction, J/mol
A  = 1.e13      //Pre-exponential factor for reaction, 1/s
T = 300.0       //Temeprature, K
R = 8.314       //Ideal gas constant, J/(mol.K)
h = 6.626e-34   //Plnak constant, Js
c = 1.0         //Std. State concentration, M
k = 1.38e-23    //,J/K

//Calculations
dH = Ea - 2*R*T
dS = R*log(A*h*c/(k*T*%e**2))

//Results
printf("\n Forward Rate constant is %4.2e 1/s",dH)

printf("\n Backward Rate constant is %4.2f 1/s",dS)

