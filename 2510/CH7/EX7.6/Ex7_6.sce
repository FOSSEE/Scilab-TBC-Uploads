//Variable declaration:
D1s = 4.0                               //Glass wool inside diameter (in)
D2s = 8.0                               //Glass wool outside diameter (in)
D1a = 3.0                               //Asbestos inside diameter (in)
D2a = 4.0                               //Asbestos outside diameter (in)
TH = 500.0                              //Outer surface temperature of pipe (°F)
TC = 100.0                              //Outer surface temperature of glass wool (°F)
La = 0.5/12.0                           //Thickness of asbestos (ft)
Lb = 2.0/12.0                           //Thickness of glss wool (ft)
ka = 0.120                              //Thermal conductivity of asbestos (Btu/h.ft.°F)
kb = 0.0317                             //Thermal conductivity of asbestos (Btu/h.ft.°F)
pi = %pi

//Calculation:
Aa = (pi*(D2a-D1a)/12.0)/log(D2a/D1a) //Area of asbestos (ft^2)
Ab = (pi*(D2s-D1s)/12.0)/log(D2s/D1s) //Area of glass wool (ft^2)
Q1 = (TH-TC)/(La/(ka*Aa)+Lb/(kb*Ab))    //Steady-state heat transfer per foot of pipe (Btu/h.)
Q2 = Q1
//Result:
printf("The steady-state heat transfer per foot of pipe, Z, is : %.1f  x z Btu/h.",Q1)
printf("The steady-state heat transfer factorizating out Z is : %.1f  Btu/h.ft.",Q2)
