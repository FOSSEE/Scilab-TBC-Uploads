////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s

B = 60.589         //Spectrum for H2, 1/cm
T = 1000           //Temperture of Hydrogen, K
//Calculations 
qR = k*T/(2*h*c*100*B)
qRs = 0.0
//for J in range(101):
//    print J
//    if (J%2 == 0):
//        qRs = qRs + (2*J+1)*exp(-h*c*100*B*J*(J+1)/(k*T)
//    else:
//        qRs = qRs + 3*(2*J+1)*exp(-h*c*100*B*J*(J+1)/(k*T))
//print qRs/4

//Results
printf("\n Rotation partition function of H2 at %4.0f is %4.3f",T,qR)

