//Variable declaration:
Dx = 0.049/12.0                     //Thickness of copper plate (ft)
h1 = 208.0                          //Film coefficient of surface one (Btu/h.ft^2.°F)
h2 = 10.8                           //Film coefficient of surface two (Btu/h.ft^2.°F)
k = 220.0                           //Thermal conductivity for copper (W/m.K)

//Calculation:
U = 1.0/(1.0/h1+Dx/k+1.0/h2)        //Overall heat transfer coefficient (Btu/h.ft^2.°F)

//Result:
printf("The overall heat transfer coefficient is : %.2f Btu/h.ft^2.°F.",U)
