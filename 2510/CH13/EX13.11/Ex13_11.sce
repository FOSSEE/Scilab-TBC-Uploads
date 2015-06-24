//Variable declaration:
//From figure 13.2:
h1 = 390.0                      //Fluid enthalpy on entering the compressor (kJ/kg)
h2 = 430.0                      //Fluid enthalpy on leaving the compressor (kJ/kg)
h3 = 230.0                      //Fluid enthalpy on leaving the condenser (kJ/kg)

//Calculation:
QH = h2 - h3                    //Heat rejected from the condenser (kJ/kg)
W_in = h2 - h1                  //Change in enthalpy across the compressor (kJ/kg)
QC = QH - W_in                  //Heat absorbed by the evaporator (kJ/kg)

//Result:
printf("The heat absorbed by the evaporator of the refrigerator is : %.0f kJ/kg.",QC)
