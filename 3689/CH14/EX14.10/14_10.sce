////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
T = 298            //Temeprature, K
nubar = 917        //Vibrational mode frequencies for F2, 1/cm

//Calculations
ThetaV = h*c*100*nubar/k
Th = 10*ThetaV
qv = 1/(1.-exp(-ThetaV/Th))

//Results
printf("\n Vibrational partition function for F2 at %4.1f K is %4.3f",T, qv)

