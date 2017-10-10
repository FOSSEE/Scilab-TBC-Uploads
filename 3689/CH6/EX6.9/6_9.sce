////
//Variable Declaration
dGfCO2  = -394.4   //Std. Gibbs energy of formation for CO2 (g), kJ/mol
dGfH2 = 0.0        //Std. Gibbs energy of formation for H2 (g), kJ/mol
dGfCO = 237.1      //Std. Gibbs energy of formation for CO (g), kJ/mol
dGfH2O = 137.2     //Std. Gibbs energy of formation for H24 (l), kJ/mol
T0 = 298.15        //Temperature in K
R = 8.314
[nCO2, nH2, nCO, nH2O] = (1,1,1,1) //Stoichiomentric coeff of CO2,H2,CO,H2O respectively in reaction

//Calculations
dGR = nCO2*dGfCO2 + nH2*dGfH2 + nCO*dGfCO + nH2O*dGfH2O
Kp = exp(-dGR*1e3/(R*T0))

//Results 
printf("\n Std. Gibbs energy change for reaction is %5.3f kJ/mol",dGR/1e3)

printf("\n Equilibrium constant for reaction is %5.3f ",Kp)

