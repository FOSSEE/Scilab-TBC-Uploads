////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s

Ba = 1.48                        //Frequency for OCS, 1/cm
Bb = [2.84,0.191,0.179]          //Frequency for ONCI, 1/cm
Bc = [9.40,1.29,1.13]            //Frequency for CH2O, 1/cm
T298 = 298.0                     //Temperture of Hydrogen, K
T1000 = 1000                     //Temperture of Hydrogen, K
nubar  =  208

//Calculations
qv298 = 1./(1.-exp(-h*c*100*nubar/(k*T298)))
qv1000 = 1./(1.-exp(-h*c*100*nubar/(k*T1000)))

//Results
printf("\n Vibrational partition function for I2 at %4d and %4d are %4.2f K and %4.2f respectively",T298, T1000,qv298, qv1000)

