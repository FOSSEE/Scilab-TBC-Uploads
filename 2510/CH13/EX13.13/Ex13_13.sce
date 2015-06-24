//Variable declaration:
h1 = 548.0                          //Steam enthalpy at the entry and exit to the boiler (kJ/kg)
h2 = 3989.0                         //Steam enthalpy at the entry and exit to the turbine (kJ/kg)
h3 = 2491.0                         //Steam enthalpy at the entry and exit to the pump (kJ/kg)
QH = 2043.0                         //Heat rejected by the condenser (kJ/kg)

//Calculation:
h4 = h3 - QH                        //Steam enthalpy at the entry and exit to the condenser (kJ/kg)
Qb = h2 - h1                        //Enthalpy change across the boiler (kJ/kg)

//Result:
printf("The enthalpy change across the boiler is : %.0f kJ/kg.",Qb)
