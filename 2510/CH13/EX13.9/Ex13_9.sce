//Variable declaration:
h_out = 390.0                   //Enthalpy of the fluid that exits from the evaporator (kJ/kg)
h_in = 230.0                    //Enthalpy of the fluid that enters the unit (kJ/kg)

//Calculation:
QC = h_out - h_in               //Heat absorbed by the evaporator (kJ/kg)

//Result:
printf("The heat absorbed by the evaporator is : %.0f kJ/kg.",QC)
