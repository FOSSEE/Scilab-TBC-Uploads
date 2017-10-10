////
//Variable Declaration
M = 0.040             //Moleculat wt of Ar, kg/mol
h = 6.626e-34         //Planks's Constant, J.s
NA = 6.022e23         //Avagadro's Number, 1/mol
k = 1.38e-23          //Boltzmann constant, J/K
T = 298.15            //Std. state temeprature,K 
P = 1e5               //Std. state pressure, Pa
R = 8.314             //Ideal gas constant, J/(mol.K)
n = 1.0               //Number of mole, mol

//Calcualtions
m = M/NA
Labda3 = (h**2/(2*%pi*m*k*T))**(3./2)
G0 = -n*R*T*log(k*T/(P*Labda3))

//Results
printf("\n Thermal wave lengths for Ne is %4.2e m3",Labda3)

printf("\n The Gibbs energy for 1 mol of Ar is %6.2f kJ",G0/1000)

