////Variable Declaration
dGfFe  = 0.0       //Std. Gibbs energy of formation for Fe (S), kJ/mol
dGfH2O = -237.1     //Std. Gibbs energy of formation for Water (g), kJ/mol
dGfFe2O3 = -1015.4  //Std. Gibbs energy of formation for Fe2O3 (s), kJ/mol
dGfH2 = 0.0        //Std. Gibbs energy of formation for Hydrogen (g), kJ/mol
T0 = 298.15        //Temperature in K
R = 8.314
[nFe,nH2,nFe2O3,nH2O] = (3,-4,-1,4)

//Calculations
dGR = nFe*dGfFe + nH2O*dGfH2O + nFe2O3*dGfFe2O3 + nH2*dGfH2  

//Results 
printf("\n Std. Gibbs energy change for reaction is %4.2f kJ/mol",dGR)

