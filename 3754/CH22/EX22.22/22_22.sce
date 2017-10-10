clear//

//Variables

VCC = 5.0                                  //Source voltage (in volts)
RE = 0.3                                   //Emitter Resistance (in kilo-ohm)
IC = 1.0                                   //Collector Current (in milli-Ampere)
beta = 100.0                               //Common emitter current gain
VCE = 2.5                                  //Collector-to-Emitter voltage (in volts)
VBE = 0.7                                  //Emitter-to-Base Voltage (in volts)
ICO = 0                                    //Reverse saturation current (in Ampere) 
R2 = 10.0                                  //Resistance (in kilo-ohm)


//Calculation

IE = IC                                    //Emitter current (in milli-Ampere)
RC = (VCC - VCE) / IE - RE                 //Collector resistance (in kilo-ohm)
VE = IE * RE                               //Emitter voltage (in volts)
VB = VE + VBE                              //Base voltage (in volts)
R1 = VCC / VB * R2 - R2                    //Resistance1 (in kilo-ohm) 

//Result

printf("\n The value of R1 is  %0.3f  kilo-ohm and value of RC is  %0.3f  ohm.",R1,RC*10**3)
