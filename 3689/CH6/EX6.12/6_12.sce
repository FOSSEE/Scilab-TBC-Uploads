////
//Variable Declaration
dGfCaCO3  = -1128.8     //Std. Gibbs energy of formation for CaCO3 (s), kJ/mol
dGfCaO = -603.3         //Std. Gibbs energy of formation for CaO (s), kJ/mol
dGfCO2 = -394.4         //Std. Gibbs energy of formation for O2 (g), kJ/mol
dHfCaCO3 = -1206.9      //Std. Enthalpy Change of formation for CaCO3 (s), kJ/mol
dHfCaO = -634.9         //Std. Enthalpy Change of formation for CaO (s), kJ/mol
dHfCO2 = -393.5         //Std. Enthalpy Change of formation for O2 (g), kJ/mol
T0 = 298.15             //Temperature in K
R = 8.314
[nCaCO3,nCaO,nO2] = (-1,1,1)

//Calculations
dGR = nCaO*dGfCaO + nO2*dGfCO2 + nCaCO3*dGfCaCO3
dHR = nCaO*dHfCaO + nO2*dHfCO2 + nCaCO3*dHfCaCO3

deff('[x]=func(T)','x=exp(-dGR*1e3/(R*T0) - dHR*1e3*(1/T - 1/T0)/R)')

Kp10 = func(1000)
Kp11 = func(1100)
Kp12 = func(1200)

//Results 
printf("\n Std. Gibbs energy change for reaction is %4.1f kJ/mol",dGR)

printf("\n Std. Enthalpy change for reaction is %4.1f kJ/mol",dHR)

printf("\n Equilibrium constants at 1000, 1100, and 1200 K are %4.4f, %4.3fe, and %4.3f",Kp10,Kp11,Kp12)

