//Variable declaration:
LR = 7.5/12.0                           //Thickness of refractory (ft)
LI = 3.0/12.0                           //Thickness of insulation (ft)
LS = 0.25/12.0                          //Thickness of steel (ft)
kR = 0.75                               //Thermal conductivity of refractory
kI = 0.08                               //Thermal conductivity of insulation
kS = 26.0                               //Thermal conductivity of steel
TR = 2000.0                             //Average surface temperature of the inner face of the refractory (°F)
TS = 220.0                              //Average surface temperature of the outer face of the steel (°F)

//Calculation:
DT = TR-TS                              //Temperature difference (°F)
Q = DT/(LR/kR+LI/kI+LS/kS)              //Heat loss (Btu/h.ft^2)(here representing Qdot/A)

//Result:
printf("The heat loss is : %.0f Btu/h.ft^2 .",Q)
