//Variable declaration:
Q = 12700.0                 //Heat transfer rate (W)
Ud = 2220.0                 //Dirty overall heat transfer coefficient (W/m^2.K)
DTlm = 47.0                 //Log mean difference temperature (u00b0C)
rii = 0.013                 //Inner radius of inner %pipe of the double %pipe heat exchanger (m)
//Calculation:
A = Q/(Ud*DTlm)             //Heat transfer area (m^2)
L = A/(2*%pi*rii)            //Tube length (m)

//Result:
printf("The heat transfer area is : %.4f m^2.",A)
printf("The length of the heat exchanger is : %.2f m.",L)
