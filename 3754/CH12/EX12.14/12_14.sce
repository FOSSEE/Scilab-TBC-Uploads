clear//

//Variables

VS = 12                          //Source voltage (in volts)
R1 = 1.5 * 10**3                 //Resistance (in ohm)
R2 = 1.8 * 10**3                 //Resistance (in ohm)
VD1=0.7;VD2=0.7;

//Calculation

RT = R1 + R2                     //Total Resistance (in ohm)
I = (VS - VD1 - VD2)/RT          //Current (in Ampere)

//Result

printf("\n Total current through the circuit is  %0.3f  mA." ,I * 10**3)
