////
//Variable Declarations
h = 6.626e-34      //Planks constant, J.s
k = 1.38e-23       //Boltzman constant, J/K
c = 3.0e8          //speed of light, m/s
T = 1000           //Temeprature, K
nubar = [1388, 667.4,667.4,2349]   //Vibrational mode frequencies for CO2, 1/cm

//Calculations
Qv = 1
for i = [1388, 667.4,667.4,2349]
    qv = 1/(1.-exp(-h*c*100*i/(k*T)))
  printf("\nAt %4.0f 1/cm the q = %4.3f",i,qv)
    Qv = Qv*qv
//Results
end
printf("\n Total Vibrational partition function for OClO at %4.1f K is %4.3f",T, Qv)

