clear//

//Variables

VCC = 9.0                                  //Source voltage (in volts)
RE = 680.0                                 //Emitter Resistance (in ohm)
RC = 1.0                                   //Collector Resistance (in kilo-ohm)
R1 = 33.0                                  //Resistance (in kilo-ohm)
R2 = 15.0                                  //Resistance (in kilo-ohm)
VBE = 0.7                                  //Emitter-to-Base Voltage (in volts)

//Calculation

VB = VCC * R2 / (R1 + R2)                  //Base voltage (in volts)
VE = VB - VBE                              //Emitter voltage (in volts)
IE = VE / RE                               //Emitter current (in Ampere)
IC = IE                                    //Collector current (in Ampere)
VRC = IC * RC  * 10**3                     //Voltage across collector resistance (in volts)
VC = VCC - VRC                             //Collector voltage (in volts)
VCE = VC - VE                              //Collector-to-emitter voltage (in volts)

//Result

printf("\n Operating point values are IC =  %0.1f  mA and VCE =  %0.3f  V.",IC*10**3,VCE)
