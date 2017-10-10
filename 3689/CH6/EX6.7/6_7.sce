////Variable Declaration
dGR  = 67.0        //Std. Gibbs energy of formation for reaction, kJ, from previous problem
dHfFe  = 0.0       //Enthalpy of formation for Fe (S), kJ/mol
dHfH2O = -285.8    //Enthalpy of formation for Water (g), kJ/mol
dHfFe2O3 = -1118.4 //Enthalpy of formation for Fe2O3 (s), kJ/mol
dHfH2 = 0.0        //Enthalpy of formation for Hydrogen (g), kJ/mol
T0 = 298.15        //Temperature in K
T = 525.           //Temperature in K
R = 8.314
[nFe,nH2,nFe2O3,nH2O] = (3,-4,-1,4)

//Calculations
dHR = nFe*dHfFe + nH2O*dHfH2O + nFe2O3*dHfFe2O3 + nH2*dHfH2  
dGR2 = T*(dGR*1e3/T0 + dHR*1e3*(1./T - 1./T0))

//Results 
printf("\n Std. Enthalpy change for reactionat %4.1f is %4.2f kJ/mol",T, dHR)

printf("\n Std. Gibbs energy change for reactionat %4.1f is %4.0f kJ/mol",T, dGR2/1e3)

