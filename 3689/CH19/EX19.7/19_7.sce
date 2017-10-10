//////Variable Declarations
r = 2.0e9          //Rate constant for electron transfer, per s
labda = 1.2        //Gibss energy change, eV
DG = -1.93         //Gibss energy change for 2-naphthoquinoyl, eV
k = 1.38e-23       //Boltzman constant, J/K
T = 298.0          //Temeprature, K
//Calculation
DGS = (DG+labda)**2/(4*labda)
k193 = r*exp(-DGS*1.6e-19/(k*T))
//Results
printf("\n DGS = %5.3f eV",DGS)

printf("\n Rate constant with barrier to electron transfer %3.2e per s",k193)

