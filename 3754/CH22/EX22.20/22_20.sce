clear//

//Variables

VCC = 12.0                                 //Source voltage (in volts)
RE = 100.0                                 //Emitter Resistance (in ohm)
RC = 1.0                                   //Collector Resistance (in kilo-ohm)
R1 = 25.0                                  //Resistance (in kilo-ohm)
R2 = 5.0                                   //Resistance (in kilo-ohm)
VBE = 0.7                                  //Emitter-to-Base Voltage (in volts)
betamin = 50.0                             //Common emitter current gain (min)
betamax = 150.0                            //Common emitter current gain (max)

//Calculation

Vth = VCC * (R2 /(R1 + R2))                //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2) * 10**3          //Thevenin's equivalent resistance (in ohm)
IE1 = (Vth - VBE)/(RE + Rth/betamin)       //Emitter current (in Ampere)
IE2 = (Vth - VBE)/(RE + Rth/betamax)       //Emitter current (in Ampere)
perc_change = (IE2 - IE1) / IE1 * 100      //Percentage change in the value of beta  

//Result

printf("\n The percentage change in collector current is  %0.1f  .",perc_change)
