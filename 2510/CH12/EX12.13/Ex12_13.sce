//Variable declaration:
//From example 12.12:
Qs1 = 11340.0                   //Surface flux (W/m^2)
D = 0.3                         //Diameter of electric heater (m)

//Calculation:
A = %pi*(D/2.0)**2               //Surface area of heater (m^2)
Qs = Qs1*A                      //Heat transfer rate (W)

//Result:
printf("The rate of heat transfer is : %.0f W.",Qs)
