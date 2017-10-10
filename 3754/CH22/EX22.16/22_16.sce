clear//

//Variables

VCC = 24.0                               //Source voltage (in volts)
RE = 270.0                               //Emitter Resistance (in ohm)
RC = 10.0                                //Collector Resistance (in kilo-ohm)
VBE = 0.7                                //Emitter-to-Base Voltage (in volts)
beta = 45.0                              //Common emitter current gain                     
VCE = 5.0                                //Collector-to-Emitter voltage (in volts)    

//Calculation

IC = (VCC - VCE) / RC                    //Collector current (in milli-Ampere)
RB = ((VCC - VBE) / IC - RC) * beta      //Base Resistance (in kilo-ohm)             

//Result

printf("\n Base resistance is  %0.2f  kilo-ohm.",RB)
