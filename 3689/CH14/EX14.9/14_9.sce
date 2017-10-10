////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s

T = 298            //Temeprature, K
nubar = list(450, 945, 1100)   //Vibrational mode frequencies for OClO, 1/cm

//Calculations
Qv = 1.
for i = nubar
    qv = 1/(1.-exp(-h*c*100*i/(k*T)))
    printf("\nAt %4.0f 1/cm the q = %4.3f',i,qv)
    Qv = Qv*qv
   end
//Results
printf("\n Total Vibrational partition function for OClO at %4.1f K is %4.3f",T, Qv)

