////Variable Declaration
T = 298.15                  //Std. Temperature, K 
P = 1.0                     //Initial Pressure, bar
[Hm0,Sm0] = (0.0,154.8)
[Sm0H2,Sm0O2] = (130.7,205.2)
dGfH2O = -237.1         //Gibbs energy of formation for H2O(l), kJ/mol  
[nH2,nO2] = (1,1/2)

//Calculations
Gm0 = Hm0 - T*Sm0
dGmH2O = dGfH2O*1000 - T*(nH2*Sm0H2 + nO2*Sm0O2)
//Results
printf("\n Molar Gibbs energy of Ar %4.3f kJ/mol",Gm0/1e3)

printf("\n Molar Gibbs energy of Water %4.3f kJ/mol",dGmH2O/1e3)

