//Variable declaration:
//From example 13.9:
TS = -10.0+273.0                    //Fluid’s saturation temperature expressed in Kelvin (K)
QC = 160.0                          //Heat absorbed by the evaporator (kJ/kg)

//Calcuation:
DS = QC/TS                          //Fluid’s change in entropy(kJ/kg.K)

//Result:
printf("The fluids change in entropy across the evaporator is : %.2f kJ/kg.K.",DS)
