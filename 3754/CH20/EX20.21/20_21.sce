clear//

//Variables

R1 = 220.0               //Resistance1 (in ohm)
R2 = 1.5 * 10**3         //Resistance2 (in ohm)
VREF = 1.25              //Reference voltage (in volts)

//Calculation

Vo = VREF * (R2/R1 + 1)  //Regulated dc output voltage (in volts)

//Result

printf("\n Regulated dc output voltage is  %0.2f  V.",Vo)
