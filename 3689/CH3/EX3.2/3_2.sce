//////Variable Declaration
betaOH = 11.2e-4           //Thermal  exapnasion coefficient of ethanol, °C
betagl = 2.00e-5           //Thermal  exapnasion coefficient of glass, °C
kOH = 11.0e-5              //Isothermal compressibility of ethanol, /bar
dT = 10.0                  //Increase in Temperature, °C

//Calcualtions
vfbyvi = (1+ betagl*dT)
dP = betaOH*dT/kOH-(1./kOH)*log(vfbyvi)

//Results
printf("\n Pressure increase in capillary %4.1f bar",dP)

