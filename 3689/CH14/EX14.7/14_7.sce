////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
Ba = 1.48                        //Spectrum for OCS, 1/cm
Bb = list(2.84,0.191,0.179)          //Spectrum for ONCI, 1/c
Bc = list(9.40,1.29,1.13)            //Spectrum for CH2O, 1/cm
T = 298.0                        //Temperture of Hydrogen, K
sigmab = 1
sigmac = 2

//Calculations
qRa = k*T/(h*c*100*Ba)
qRb = (sqrt(%pi)/sigmab)*(k*T/(h*c*100))**(3./2)*sqrt(1/Bb(1))*sqrt(1/Bb(2))*sqrt(1/Bb(3))
qRc = (sqrt(%pi)/sigmac)*(k*T/(h*c*100))**(3./2)*sqrt(1/Bc(1))*sqrt(1/Bc(2))*sqrt(1/Bc(3))

//Results
printf("\n Rotation partition function for OCS, ONCI, CH2O at %4.0f K are %4.0f, %4.0f, and %4.0f respectively",T,qRa,qRb,qRc)

