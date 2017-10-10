clear//

//Variables

VCC = 12.0                            //Source voltage (in volts)
RC = 4.0                              //Collector resistance (in kilo-ohm)
RE = 3.3                              //Emitter resistance (in kilo-ohm)
beta = 120.0                          //Common emitter current gain
VBE = 0.7                             //Emitter-to-Base Voltage (in volts)
R1 = 60.0                             //Resistance (in kilo-ohm)   
R2 = 30.0                             //Resistance (in kilo-ohm)

//Calculation

Vth = VCC * R2 / (R1 + R2)            //Thevenin's voltage (in volts)
Rth = R1 * R2 / (R1 + R2)             //Thevenin's equivalent voltage (in volts)
IE = (Vth - VBE)/(RE + Rth/beta)      //Emitter current (in milli-Ampere)
r1e = 25.0 / IE * 10**-3              //a.c. resistance of emitter diode (in kilo-hm)
rL = RC                               //Load resistance (in kilo-ohm)
Av = RC / r1e                         //Voltage gain

//Result

printf("\n The voltage gain is  %0.1f .",Av)
