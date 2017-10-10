clear//

//Variables

VCC = 12.0                                  //Source voltage (in volts)
RE = 1.0                                    //Emitter Resistance (in kilo-ohm)
RC = 2.0                                    //Collector Resistance (in kilo-ohm)
R1 = 100.0                                  //Resistance (in kilo-ohm)
R2 = 20.0                                   //Resistance (in kilo-ohm)
VBE = -0.2                                  //Emitter-to-Base Voltage (in volts)
beta = 100.0                                //Common emitter current gain

//Calculation

VB = -VCC * R2 / (R1 + R2)                  //Base voltage (in volts)
VE = VB - VBE                               //Emitter voltage (in volts)
IE = -VE / RE                               //Emitter current (in milli-Ampere) 
IC = IE                                     //Collector current (in milli-Ampere)
VC = -(VCC - IC * RC)                       //Collector voltage (in volts)
VCE = VC - VE                               //Collector-to-emitter voltage (in volts) 

//Result

printf("\n Base voltage is  %0.3f  V.\nEmitter voltage is  %0.3f  V.\nCollector voltage is  %0.3f  V.\nCollector current is  %0.3f  mA.\nEmitter current is  %0.3f  mA.\nCollector-to-emitter voltage is  %0.3f  V.",VB,VE,VC,IC,IE,VCE)
