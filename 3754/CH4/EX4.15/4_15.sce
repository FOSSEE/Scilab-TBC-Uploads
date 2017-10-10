clear//

//Variables

V = 6.0                                 //Applied voltage (in volts)
R0 = 0.2                                //Resistance (in ohm) 
R1 = 2.0                                //Resistance (in ohm)
R2 = 3.0                                //Resistance (in ohm)
R3 = 6.0                                //Resistance (in ohm)

//Calculation

Req = 1 / (1/R1 + 1/R2 + 1/R3)          //Equivalent Resistance (in ohm) 
R = R0 + Req                            //Total Resistance (in ohm)
I = V/R                                 //Current (in Ampere) 
V0 = I * R0                             //Voltage drop across R0 (in volts)
Veq = V - V0                            //Voltage drop across Req (in volts)
I1 = Veq / R1                           //Current through R1 (in Ampere)
I2 = Veq / R2                           //Current through R2 (in Ampere) 
I3 = Veq / R3                           //Current through R3 (in Ampere)
P = V * I                               //Power supplied by the voltage source (in volts)
I0 = V/R0                               //Current in case of 'Short' across DE (in Ampere)
P0 = V * I0                             //Power dissipated in case of 'Short' (in watt)

//Result

printf("\n Total Resistance is  %0.3f  ohm.",R)
printf("\n Branch Currents :\nThrough R1 =  %0.3f  A.\nThrough R2 =  %0.3f  A.\nThrough R3 =  %0.3f  A.",I1,I2,I3)
printf("\n Current supplied by voltage source is  %0.3f  A.",I)
printf("\n Power supplied by the voltage source is  %0.3f  W.",P)
printf("\n Current supplied in case of Short across DE is  %0.3f  A.",I0)
printf("\n Power supplied in case of Short acorss DE is  %0.3f  A.",P0)
