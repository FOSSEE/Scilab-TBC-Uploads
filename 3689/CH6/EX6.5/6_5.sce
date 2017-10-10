////
//Variable Declaration
nHe = 1.0          //Number of moles of He
nNe = 3.0          //Number of moles of Ne
nAr = 2.0          //Number of moles of Ar
nXe = 2.5          //Number of moles of Xe
T = 298.15         //Temperature in K
P = 1.0            //Pressure, bar
R = 8.314

//Calculations
n = nHe + nNe + nAr + nXe
dGmix = n*R*T*((nHe/n)*log(nHe/n) + (nNe/n)*log(nNe/n) +(nAr/n)*log(nAr/n) + (nXe/n)*log(nXe/n))
dSmix = n*R*((nHe/n)*log(nHe/n) + (nNe/n)*log(nNe/n) +(nAr/n)*log(nAr/n) + (nXe/n)*log(nXe/n))

//Results 
printf("\n Std. free energy Change on mixing is %3.1e J",dGmix)

printf("\n Std. entropy Change on mixing is %4.1f J",dSmix)

