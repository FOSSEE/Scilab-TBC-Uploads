////Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s

J = 4              //Rotational energy level
B = 8.46           //Spectrum, 1/cm

//Calculations 
T = (2*J+1)**2*h*c*100*B/(2*k)
//Results
printf("\n Spectrum will be observed at %4.0f K",T)

