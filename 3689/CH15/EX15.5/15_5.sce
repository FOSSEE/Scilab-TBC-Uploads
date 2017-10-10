////
//Variable Declaration
Mne = 0.0201797       //Molecular wt of ne, kg/mol     
Mkr = 0.0837980       //Molecular wt of kr, kg/mol
Vmne = 0.0224         //Std. state molar volume of ne, m3
Vmkr = 0.0223         //Std. state molar volume of kr, m3
h = 6.626e-34         //Planks's Constant, J.s
NA = 6.022e23         //Avagadro's Number, 1/mol
k = 1.38e-23          //Boltzmann constant, J/K
T = 298               //Std. state temeprature,K 
R = 8.314             //Ideal gas constant, J/(mol.K)
n = 1.0               //Number of mole, mol

//Calcualtions
mne = Mne/NA
mkr = Mkr/NA
Labdane = sqrt(h**2/(2*%pi*mne*k*T))
Labdakr = sqrt(h**2/(2*%pi*mkr*k*T))
Sne = 5.*R/2 + R*log(Vmne/Labdane**3)-R*log(NA)
Skr = 5.*R/2 + R*log(Vmkr/Labdakr**3)-R*log(NA)

//Results
printf("\n Thermal wave lengths for Ne is %4.2e m3",Labdane)

printf("\n Std. Molar entropy for Ne is %4.2f J/(mol.K)",Sne)

printf("\n Thermal wave lengths for Kr is %4.2e m3",Labdakr)

printf("\n Std. Molar entropy for Kr is %4.2f J/(mol.K)",Skr)

