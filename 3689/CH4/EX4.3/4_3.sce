////Varialble Declaration
ms1 = 0.972          //Mass of cyclohexane, g
DT1 = 2.98           //Change in temperature for bath, °C
DUR1 = -3913e3       //Std Internal energy change, J/mol
mw = 1.812e3         //Mass of water, g
ms2 = 0.857          //Mass of benzene, g
Ms1 = 84.16
Ms2 = 78.12
DT2 = 2.36           //Change in temperature for bath, °C
Mw = 18.02
Cpw = 75.3 

//Calculation

Ccal = ((-ms1/Ms1)*DUR1-(mw/Mw)*Cpw*DT1)/DT1
DUR2 = (-Ms2/ms2)*((mw/Mw)*Cpw*DT2+Ccal*DT2)

//Results
printf("\n Calorimeter constant %4.2e J/°C",Ccal)

printf("\n Enthalpy of rection for benzene %4.2e J/mol",DUR2)

