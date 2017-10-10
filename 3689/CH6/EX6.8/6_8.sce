////
//Variable Declaration
dGfNO2  = 51.3     //Std. Gibbs energy of formation for NO2 (g), kJ/mol
dGfN2O4 = 99.8     //Std. Gibbs energy of formation for N2O4 (g), kJ/mol
T0 = 298.15        //Temperature in K
pNO2 = 0.350       //Partial pressure of NO2, bar
pN2O4 = 0.650      //Partial pressure of N2O4, bar
R = 8.314
[nNO2,nN2O4] = (-2,1)

//Calculations
dGR = nN2O4*dGfN2O4*1e3 + nNO2*dGfNO2*1e3 + R*T0*log(pN2O4/(pNO2)**2)

//Results 
printf("\n Std. Gibbs energy change for reaction is %5.3f kJ/mol",dGR/1e3)

