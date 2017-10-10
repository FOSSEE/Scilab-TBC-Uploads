clear//

//Variables

T1 = 20                              //Temperature (in degree celsius)
R1 = 10000                           //Resistance at 20 degree celsius (in ohm)
T2 = -25                             //Temperature (in degree celsius) 
alpha = 0.0039                       //Temperature coefficient at 20 degree celsius (in per degree Celsius)

//Calculation

R80 = R1*(1 + alpha*(80 - T1))       //Resistance at 80 degree celsius (in ohm)
RT2 = R1*(1 + alpha*(-25 - T1))      //Resistance at -25 degree celsius (in ohm)

//Result

printf("\n Resistance at 80 degree celsius is  %0.1f  kilo-ohm.\nResistance at -25 degree celsius is  %0.1f  kilo-ohm.",R80*10**-3,RT2*10**-3)
