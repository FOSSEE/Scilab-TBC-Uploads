//Variable declaration:
Ao = 1.85                           //Area of heat exchanger (ft^2)

//Calculation:
//From figure 15.6:
y = 0.560*10**-3                    //Intercept 1/UoAo (..h/Btu)
ho = 1.0/(Ao*y)                     //Thermal conductivity for heat exchanger (Btu/h.ft^2..)

//Result:
printf("Thermal conductivity for the heat exchanger is : %.0f Btu/h.ft^2.. .",ho)
