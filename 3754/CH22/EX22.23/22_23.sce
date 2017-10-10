clear//

//Variables

VCC = 20.0                                 //Source voltage (in volts)
RE = 5.0                                   //Emitter Resistance (in kilo-ohm)
RC = 1.0                                   //Collector Resistance (in kilo-ohm)
R1 = 10.0                                  //Resistance (in kilo-ohm)
R2 = 10.0                                  //Resistance (in kilo-ohm)
VBE = 0.7                                  //Emitter-to-Base Voltage (in volts)

//Calculation

VB = VCC * R2 / (R1 + R2)                  //Voltage (in volts)
VE = VB - VBE                              //Emitter voltage (in volts)
IE = VE / RE                               //Emitter current (in milli-Ampere)
IC = IE                                    //Collector current (in milli-Ampere)
VCE = VCC - IC * RC                        //Collector-to-emitter voltage (in volts)    
VC = VCE + VE                              //Collector potential (in volts)

//Result

printf("\n Emitter current is  %0.3f  mA.\nValue of VCE is  %0.3f  V.\nValue of collector potential is  %0.3f  V.",IE,VCE,VC)
