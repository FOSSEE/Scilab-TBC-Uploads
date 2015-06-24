//Variable declaration:
//From table 13.4:
x3 = 0.9575                         //Mass fraction vapour at point 3
h3 = 2491.0                         //Steam enthalpy at the entry and exit to the pump (kJ/kg)
s3 = 7.7630                         //Entropy at the entry and exit to the pump (kJ/kg.K)
s4 = 1.4410                         //Entropy at the entry and exit to the condenser (kJ/kg.K)
//From example13.14:
h4 = 448.0                          //Steam enthalpy at the entry and exit to the condenser (kJ/kg)

//Calculation:
Q_out = h3 - h4                     //Heat rejected (kJ/kg)
DS = s3 - s4                        //Process change in entropy (kJ/kg)
T3 = Q_out/DS                       //Temperature at point 3 (K)

//Result:
printf("The temperature at point 3 is : %.0f  K.",T3)
printf("Or, the temperature at point 3 is : %.0f °C.",T3-273)
