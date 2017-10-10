////Variable Declaration
nb = 5.00      //Number of moles of Benzene, mol
nt = 3.25      //Number of moles of Toluene, mol
T = 298.15     //Temperature, K
R = 8.314      //Ideal Gas Constant, J/(mol.K)
P0b = 96.4     //Vapor pressure of Benzene, torr
P0t = 28.9     //Vapor pressure of Toluene, torr

//Calculations
n = nb + nt
xb = nb/n
xt = 1. - xb
P = xb*P0b + xt*P0t
y = (P0b*P - P0t*P0b)/(P*(P0b-P0t))
yt = 1. -y

//Results
printf("\n Total pressure of the vapor is %4.1f torr",P)

printf("\n Benzene fraction in vapor is %4.3f ",y)

printf("\n Toulene fraction in vapor is %4.3f ",yt)

