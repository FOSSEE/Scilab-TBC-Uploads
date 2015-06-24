clc
// initialization of variables
T1=350+273 // initial temperature in kelvin
P1=1200 // initial pressure in kPa
P2=140 // final pressure in kPa
k=1.4 // polytopic index for air
Cv=0.717 // specific heat at  constant volume for air
//solution
T2=T1*((P2/P1)**((k-1)/k))  // reversible adiabatic process relation

w=-Cv*(T2-T1) // work done by gases in reversible adiabatic process
printf(" The work done by gases is %.0f kJ/kg",w)

