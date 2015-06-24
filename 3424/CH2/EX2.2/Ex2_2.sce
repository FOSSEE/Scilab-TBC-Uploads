clc
//Initialization of variables
h1 = 36/12 //ft
h2 = 6/12 //ft
h3 = 9/12 //ft
SgOIL = 0.9 
SgHg =  13.6
yH2O = 62.4 // lb/ft^3
// Calculations
Dair = -(SgOIL)*(yH2O)*(h1+h2) + (SgHg)*(yH2O)*(h3)
Pgage = Dair/144 // psi
//results 
printf("the pressure reading in the gauge is %.2f psi",Pgage)
