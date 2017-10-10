////
//Variable Declaration
nb = 5.00      //Number of moles of Benzene, mol
nt = 3.25      //Number of moles of Toluene, mol
T = 298.15     //Temperature, K
P = 1.0        //Pressure, bar
R = 8.314      //Ideal Gas Constant, J/(mol.K)

//Calculations
n = nb + nt
xb = nb/n
xt = 1. - xb
dGmix = n*R*T*(xb*log(xb)+xt*log(xt))
dSmix = -n*R*(xb*log(xb)+xt*log(xt))

//Results
printf("\n Gibbs energy change of mixing is %4.3e J",dGmix)

printf("\n Gibbs energy change of mixing is < 0, hence the mixing is spontaneous')
printf("\n Entropy change of mixing is %4.2f J/K",dSmix)

