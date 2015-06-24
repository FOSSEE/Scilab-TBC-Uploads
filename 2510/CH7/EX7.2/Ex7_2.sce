//Variable declaration:
k = 0.026               //Thermal conductivity of insulating material (Btu/ft.h.°F)
L = 1.0                 //Thickness of insulating material (ft)
TC = 70.0               //Temperature on the cold side surface (°F)
TH = 210.0              //Temperature on the hot side surface (°F)
c = 0.252               //Kilocalorie per hour in a Btu per hour
m = 0.093               //meter square in a feet square

//Calculation:
DT = TH-TC              //Change in temperature (°F)
Q1 = k*DT/L             //Rate of heat flux throughthe wall (Btu/f^t2.h.)
Q2 = Q1*c/m             //Rate of heat flux throughthe wall in SI units (kcal/m^2.h)

//Result:
printf("The rate of heat flux in Btu/ft^2.h is : %.3f Btu/ft^2.h.",Q1)
printf("The rate of heat flux in SI units is : %.3f kcal/m^2.h.",Q2)
