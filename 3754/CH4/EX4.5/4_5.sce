clear//

//Variables

R1 = 2.2                  //Resistance (in kilo-ohm)
R2 = 1                    //Resistance (in kilo-ohm)
R3 = 3.3                  //Resistance (in kilo-ohm)
V2 = 6                    //Voltage drop across R2 (in volts)

//Calculation

I = V2 / R2               //Current in the circuit (in milli-Ampere) 
V1 = R1 * I               //Voltage drop across R1 (in volts)
V3 = R3 * I               //Voltage drop across R3 (in volts)

//Result
printf("\n The voltage drop across R1 is  %0.3f V and the voltage drop across R3 is  %0.3f  V.",V1,V3)
