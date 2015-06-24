//Variable declaration:
//From example 7.6:
TH = 500                                //Outer surface temperature of pipe (°F)
Lb = 2.0/12.0                           //Thickness of glss wool (ft)
kb = 0.0317                             //Thermal conductivity of asbestos (Btu/h.ft.°F)
Ab = 1.51                               //Area of glass wool (ft^2)
Q = 103.5                               //Steady-state heat transfer per foot of pipe (Btu/h.)
La = 0.5/12.0                           //Thickness of asbestos (ft)
ka = 0.120                              //Thermal conductivity of asbestos (Btu/h.ft.°F)
Aa = 0.91                               //Area of asbestos (ft^2)
TC = 100                                //Outer surface temperature of glass wool (°F)

//Calculation:
Ti_b = -((Lb*Q)/(kb*Ab)-TH)             //Interfacial temperature of glass wool layer (°F)
Ti_a = (Q*La)/(ka*Aa)+TC                //Interfacial temperature of asbestos layer (°F)

//Result:
printf("The interfacial temperature of glass wool layer is : %.0f  °F.",Ti_b)
printf("The interfacial temperature of asbestos layer is : %.1f  °F.",Ti_a)
