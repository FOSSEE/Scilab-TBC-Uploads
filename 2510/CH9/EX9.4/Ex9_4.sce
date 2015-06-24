//Variable declaration:
TS = 10+273                     //Outer surface temperature of wall (K)
Q = 3000.0                      //Heat transfer rate (W)
h = 100.0                       //Convection coefficient of air (W/m^2)
A = 3.0                         //Area of glass window (m^2)

//Calculation:
TM = TS-Q/(h*A)                 //Bulk temperature of fluid (K)

//Result:
printf("The bulk temperature of fluid is : %f  K.",TM)
printf("The bulk temperature of fluid is : %f  °C.",TM-273)
