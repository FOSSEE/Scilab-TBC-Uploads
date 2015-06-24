//Variable declaration:
//From example 14.14:
Di = 0.825/12.0                         //%pipe inside diameter (ft)
L = 1.0                                 //%pipe length (ft)
Ui = 0.7492                             //Overall heat coefficient (Btu/h.ft^2.°F)
Ts = 247.0                              //Steam temperature (°F)
ta = 60.0                               //Air temperature (°F)

//Calculation:
Ai = %pi*Di*L                            //Inside area of %pipe (ft^2)
Q = Ui*Ai*(Ts-ta)                       //Heat transfer rate (Btu/h)

//Result:
printf("The heat transfer rate is : %.1f Btu/h.",Q)
