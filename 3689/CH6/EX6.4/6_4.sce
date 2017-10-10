////Variable Declaration
dGf298 = 370.7     //Std. free energy of formation for Fe (g), kJ/mol
dHf298 = 416.3     //Std. Enthalpy of formation for Fe (g), kJ/mol
T0 = 298.15        //Temperature in K
T = 400.           //Temperature in K
R = 8.314

//Calculations

dGf = T*(dGf298*1e3/T0 + dHf298*1e3*(1./T - 1./T0))

//Results 
printf("\n Std. free energy of formation for Fe(g at 400 K is %4.1f kJ/mol",dGf/1000)

