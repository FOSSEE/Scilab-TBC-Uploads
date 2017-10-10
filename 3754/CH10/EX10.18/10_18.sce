clear//

//Variables

RH = 160                //Hall coeffficient (in cubic-centimeter per Coulomb)
p = 0.16                //Resistivity (in ohm-centimeter)

//Calculation

sig = 1/p               //Conductivity (in per ohm-centimeter)
un = sig * RH           //Electron mobility (in cmentimeter-square per volt-second)

//Result

printf("\n Electron mobility is  %0.3f  cm**2/V-s.",un)
