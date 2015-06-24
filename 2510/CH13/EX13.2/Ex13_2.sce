//Variable declaration:
LR = 7.5/12.0                           //Thickness of refractory (ft)
kR = 0.75                               //Thermal conductivity of refractory
TR = 2000.0                             //Average surface temperature of the inner face of the refractory (°F)
Q = 450.0                               //Heat loss (Btu/h.ft^2)

//Calculation:
TI = TR - Q*(LR/kR)                     //Temperature of the boundary where the refractory meets the insulation (°F)

//Result:
printf("The temperature of the boundary where the refractory meets the insulation is : %.0f °F .",TI)
