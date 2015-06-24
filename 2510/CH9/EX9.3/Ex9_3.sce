//Variable declaration:
h = 48.0                    //Convective heat transfer coefficient (Btu/h.ft.°F)
A = 2*1.5                   //Total heat transfer area (ft^2)
Ts = 530.0                  //Surface temperature of plate (°F)
Tm = 105.0                  //Maintained temperature of opposite side of plate (°F)
kW = 3.4123*10**3           //Units kW in a Btu/h

//Calculation:
Q = h*A*(Ts-Tm)             //Heat transfer rate in Btu/h (Btu/h)
Q1 = Q/kW                   //Heat transfer rate in kW (kW)

//Result:
printf("The heat transfer rate in Btu/h is : %f  Btu/h.",Q)
printf("The heat transfer rate in kW is : %.2f  kW.",Q1)
