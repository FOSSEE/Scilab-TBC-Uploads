//Variable declaration:
n = 600                     //The mass flow rate of fluid (lbmol/min)
Cp_AV = 0.271               //Heat capacity (Btu/lbmol . °F)
T1 = 200                    //Initial temperature(°F)
T2 = 600                    //Final temperature(°F)

//Calcultaion:
Q = n*Cp_AV*(T2 - T1)       //The required heat rate (Btu/min)
Q = Q - modulo(Q,1000)

//Result:
printf ("The required heat rate is : %.0f Btu/min",Q)
