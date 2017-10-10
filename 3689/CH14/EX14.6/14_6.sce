////Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
B = 0.0374         //Spectrum for H2, 1/cm
T = 100.0          //Temperture of Hydrogen, K
sigma = 2.

//Calculations
ThetaR = h*c*100*B/k
qR = T/(sigma*ThetaR)

//Results
printf("\n Rotation partition function of H2 at %4.0f K is %4.3f",T,qR)

