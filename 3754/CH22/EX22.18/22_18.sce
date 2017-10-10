clear//

//Variables

VCC = 10.0                                //Source voltage (in volts)
RE = 500.0                                //Emitter Resistance (in ohm)
RC = 1.0                                  //Collector Resistance (in kilo-ohm)
R1 = 10.0                                 //Resistance (in kilo-ohm)
R2 = 5.0                                  //Resistance (in kilo-ohm)
VBE = 0.7                                 //Emitter-to-Base Voltage (in volts)
beta = 100.0                               //Common emitter current gain     

//Calculation

VB = VCC * (R2 /(R1 + R2))                //Base voltage (in volts)
VE = VB - VBE                             //Emitter voltage (in volts)
IE = VE / RE                              //Emitter current (in Ampere)
IC = IE                                   //Collector current (in Ampere)
VCE = VCC - IC * (RC * 10**3 + RE)        //Collector-to-Emitter voltage (in volts)

//Result

printf("\n Collector current is  %0.2f  mA.\nCollector-to-Emitter voltage is  %0.3f  V.",IC*10**3,VCE)
