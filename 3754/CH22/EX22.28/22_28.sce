clear//

//Variables

VEE = 10.0                           //Emitter Bias Voltage (in volts)
VCC = 10.0                           //Source voltage (in volts)
RC = 1.0                             //Collector Resistance (in kilo-ohm)
RE = 5.0                             //Emitter Resistance (in kilo-ohm)
RB = 50.0                            //Base Resistance (in kilo-ohm)   
VBE = 0.7                            //Emitter-to-Base Voltage (in volts)

//Calculation

VE = -VBE                            //Emitter voltage (in volts)
IE = (VEE - VBE)/ RE                 //Emitter current (in milli-Ampere)
IC = IE                              //Collector current (in milli-Ampere)
VC = VCC - IC * RC                   //Collector voltage (in volts)
VCE = VC - VE                        //Collector-to-Emitter voltage (in volts)

//Result

printf("\n The value of emitter current is  %0.3f  mA.\nTHe value of collector current is  %0.3f  mA.\nThe value of collector-to-emitter voltage is  %0.3f  V.",IE,IC,VCE)
